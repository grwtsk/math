# ExactReflectiveReificationTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75d0741d3573fd2c4f3b4fdc0150a9052d1a21ab099db5f99863a71e42501ec1",
  "kind": "structure",
  "lexical_name": "ExactReflectiveReificationTower",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exactreflectivereificationtower--10a379681051d74ec6c66bb8",
  "source": {
    "blob": "818e70ed5b2f894f983c0849a297e1567df4c735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 472,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10a379681051d74ec6c66bb83b47d2e6649b240e984afc7e6eac652b50948c17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75d0741d3573fd2c4f3b4fdc0150a9052d1a21ab099db5f99863a71e42501ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactReflectiveReificationTower
    (Aspect Proxy Syntax : Nat → Type u)
    (AspectLabel ProxyLabel : Nat → Type v) where
  aspectIdentity : ∀ level, Setoid (Aspect level)
  proxyIdentity : ∀ level, Setoid (Proxy level)
  reference : ∀ level,
    @ReificationReference
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
  referenceExact : ∀ level,
    @ReificationReference.ReferenceExact
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
      (reference level)
  aspectSystem : ∀ level,
    @QuotientTransitionSystem
      (Aspect level) (aspectIdentity level) (AspectLabel level)
  proxySystem : ∀ level,
    @QuotientTransitionSystem
      (Proxy (level + 1)) (proxyIdentity (level + 1)) (ProxyLabel (level + 1))
  labelTranslation : ∀ level,
    AdmittedLabelTranslation (AspectLabel level) (ProxyLabel (level + 1))
  aspectToProxy : ∀ level,
    @AspectToProxyCoherent
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
      (AspectLabel level) (ProxyLabel (level + 1))
      (reference level) (referenceExact level)
      (aspectSystem level) (proxySystem level) (labelTranslation level)
  proxyToAspect : ∀ level,
    @ProxyToAspectCoherent
      (Aspect level) (Proxy (level + 1))
      (aspectIdentity level) (proxyIdentity (level + 1))
      (AspectLabel level) (ProxyLabel (level + 1))
      (reference level) (referenceExact level)
      (aspectSystem level) (proxySystem level) (labelTranslation level)
  aspectLift : ∀ level, Aspect level → Aspect (level + 1)
  proxyLift : ∀ level, Proxy (level + 1) → Proxy (level + 2)
  aspectLiftExtensional : ∀ level {left right},
    (aspectIdentity level).r left right →
      (aspectIdentity (level + 1)).r
        (aspectLift level left) (aspectLift level right)
  proxyLiftExtensional : ∀ level {left right},
    (proxyIdentity (level + 1)).r left right →
      (proxyIdentity (level + 2)).r
        (proxyLift level left) (proxyLift level right)
  reificationNaturality : ∀ level aspect,
    (proxyIdentity (level + 2)).r
      ((reference (level + 1)).rho.eval
        (aspectLift level aspect)
        ((referenceExact (level + 1)).1.1 (aspectLift level aspect)))
      (proxyLift level
        ((reference level).rho.eval aspect
          ((referenceExact level).1.1 aspect)))
  quote : ∀ level, Aspect level → Syntax (level + 1)
  operativeInterpreter : ∀ level, Aspect level
  applicationDomain : ∀ level, Set (Aspect level)
  applyAspect : ∀ level (_interpreter input : Aspect level),
    input ∈ applicationDomain level → Aspect level
  applyProxy : ∀ level,
    Proxy (level + 1) → Syntax (level + 1) → Proxy (level + 1)
  metaCircularApply : ∀ level input
      (defined : input ∈ applicationDomain level),
    (proxyIdentity (level + 1)).r
      (applyProxy level
        ((reference level).rho.eval (operativeInterpreter level)
          ((referenceExact level).1.1 (operativeInterpreter level)))
        (quote level input))
      ((reference level).rho.eval
        (applyAspect level (operativeInterpreter level) input defined)
        ((referenceExact level).1.1
          (applyAspect level (operativeInterpreter level) input defined)))

namespace ExactReflectiveReificationTower

variable {Aspect Proxy Syntax : Nat → Type u}
  {AspectLabel ProxyLabel : Nat → Type v}

/-- The designated proxy of an aspect at one tower level. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `818e70ed5b2f894f983c0849a297e1567df4c735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
