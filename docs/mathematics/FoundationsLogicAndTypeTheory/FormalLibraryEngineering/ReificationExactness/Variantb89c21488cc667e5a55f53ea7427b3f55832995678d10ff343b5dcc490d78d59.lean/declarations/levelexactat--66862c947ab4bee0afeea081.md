# LevelExactAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22969f04899b411ebbb41c03c5c3b3dc10628656c20afe7265751a6124913f24",
  "kind": "def",
  "lexical_name": "LevelExactAt",
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
  "slug": "levelexactat--66862c947ab4bee0afeea081",
  "source": {
    "blob": "6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 417,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66862c947ab4bee0afeea0818e47fa88b93405c6f2986258a7c4fda35d7ee69a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22969f04899b411ebbb41c03c5c3b3dc10628656c20afe7265751a6124913f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LevelExactAt (tower : StructuralReflectiveReificationTower
    Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) : Prop := by
  letI : Setoid (Aspect level) := tower.aspectIdentity level
  letI : Setoid (Aspect (level + 1)) := tower.aspectIdentity (level + 1)
  letI : Setoid (Proxy (level + 1)) := tower.proxyIdentity (level + 1)
  letI : Setoid (Proxy (level + 2)) := tower.proxyIdentity (level + 2)
  exact ∃
      (currentExact : (tower.reference level).ReferenceExact)
      (successorExact : (tower.reference (level + 1)).ReferenceExact),
    AspectToProxyCoherent
        (tower.reference level) currentExact
        (tower.aspectSystem level) (tower.proxySystem level)
        (tower.labelTranslation level) ∧
      ProxyToAspectCoherent
        (tower.reference level) currentExact
        (tower.aspectSystem level) (tower.proxySystem level)
        (tower.labelTranslation level) ∧
      (∀ aspect,
        (tower.proxyIdentity (level + 2)).r
          ((tower.reference (level + 1)).rho.eval
            (tower.aspectLift level aspect)
            (successorExact.1.1 (tower.aspectLift level aspect)))
          (tower.proxyLift level
            ((tower.reference level).rho.eval aspect
              (currentExact.1.1 aspect)))) ∧
      (∀ input (defined : input ∈ tower.applicationDomain level),
        (tower.proxyIdentity (level + 1)).r
          (tower.applyProxy level
            ((tower.reference level).rho.eval
              (tower.operativeInterpreter level)
              (currentExact.1.1 (tower.operativeInterpreter level)))
            (tower.quote level input))
          ((tower.reference level).rho.eval
            (tower.applyAspect level
              (tower.operativeInterpreter level) input defined)
            (currentExact.1.1
              (tower.applyAspect level
                (tower.operativeInterpreter level) input defined))))

end StructuralReflectiveReificationTower

/--
An all-level tower of aspects and addressable proxies.  Reification is upward;
quotation targets a separate syntax family.  The tower carries exact reference
matching, both admitted causal directions, naturality under aspect/proxy lifts,
and a meta-circular application law at every finite level.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
