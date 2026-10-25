# quotient_reify_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3808bfb3-0896-ce9d-8377-b5054dd93cc1",
  "kind": "theorem",
  "lexical_name": "quotient_reify_bijective",
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
  "slug": "quotient-reify-bijective--4b9d2e3caeefda288fc558af",
  "source": {
    "blob": "818e70ed5b2f894f983c0849a297e1567df4c735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 576,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b9d2e3caeefda288fc558af98ca33669e25b3d0fbf2e479a98a9c4ca3e3f85e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3808bfb3-0896-ce9d-8377-b5054dd93cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_reify_bijective
    (tower : ExactReflectiveReificationTower
      Aspect Proxy Syntax AspectLabel ProxyLabel) (level : Nat) :
    Function.Bijective (quotientReify tower level) := by
  letI : Setoid (Aspect level) := tower.aspectIdentity level
  letI : Setoid (Proxy (level + 1)) := tower.proxyIdentity (level + 1)
  constructor
  · intro left right sameProxy
    refine Quotient.inductionOn₂ left right ?_ sameProxy
    intro leftAspect rightAspect sameProxy
    apply Quotient.sound
    apply (tower.referenceExact level).1.2.1
      leftAspect rightAspect
      ((tower.referenceExact level).1.1 leftAspect)
      ((tower.referenceExact level).1.1 rightAspect)
    change
      Quotient.mk (tower.proxyIdentity (level + 1))
          ((tower.reference level).rho.eval leftAspect
            ((tower.referenceExact level).1.1 leftAspect)) =
        Quotient.mk (tower.proxyIdentity (level + 1))
          ((tower.reference level).rho.eval rightAspect
            ((tower.referenceExact level).1.1 rightAspect)) at sameProxy
    exact Quotient.exact sameProxy
  · intro proxyClass
    refine Quotient.inductionOn proxyClass ?_
    intro proxy
    rcases (tower.referenceExact level).1.2.2 proxy with
      ⟨aspect, _defined, represented⟩
    refine ⟨Quotient.mk _ aspect, ?_⟩
    change
      Quotient.mk (tower.proxyIdentity (level + 1))
          ((tower.reference level).rho.eval aspect
            ((tower.referenceExact level).1.1 aspect)) =
        Quotient.mk (tower.proxyIdentity (level + 1)) proxy
    exact Quotient.sound represented

/-- The component equivalence whose forward map is the designated `rho`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `818e70ed5b2f894f983c0849a297e1567df4c735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
