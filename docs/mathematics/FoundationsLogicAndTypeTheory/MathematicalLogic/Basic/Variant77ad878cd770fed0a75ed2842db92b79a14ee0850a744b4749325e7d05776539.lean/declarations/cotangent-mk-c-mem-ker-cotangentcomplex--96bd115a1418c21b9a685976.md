# Cotangent.mk_C_mem_ker_cotangentComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53d86967-eb4a-81a5-b0a2-141b6d48bad5",
  "kind": "lemma",
  "lexical_name": "Cotangent.mk_C_mem_ker_cotangentComplex",
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
  "slug": "cotangent-mk-c-mem-ker-cotangentcomplex--96bd115a1418c21b9a685976",
  "source": {
    "blob": "46bb87bb1c79545b2527777f455d3a1d32fe6cf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96bd115a1418c21b9a685976616be945ca5a0168f08b6bc251c66cbef2848abb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d86967-eb4a-81a5-b0a2-141b6d48bad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.mk_C_mem_ker_cotangentComplex {σ : Type*} (G : Generators R S σ)
    {r : R} (hr : C r ∈ G.ker) :
    Extension.Cotangent.mk ⟨C r, hr⟩ ∈ G.toExtension.cotangentComplex.ker := by
  have : D R G.toExtension.Ring (C r) = 0 := Derivation.map_algebraMap ..
  simp [this]

section baseChange

variable {A : Type*} [CommRing A] [Algebra S A] [Algebra P.Ring A] [IsScalarTower P.Ring S A]

variable (R S) in
/-- This is (isomorphic to) the base change of the cotangent complex to `A`, but
the domain and codomains of this are more manageable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46bb87bb1c79545b2527777f455d3a1d32fe6cf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
