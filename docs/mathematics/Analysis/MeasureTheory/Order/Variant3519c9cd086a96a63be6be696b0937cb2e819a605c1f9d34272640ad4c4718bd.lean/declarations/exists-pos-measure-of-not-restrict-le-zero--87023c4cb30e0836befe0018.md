# exists_pos_measure_of_not_restrict_le_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12808918-aff7-f744-b09e-a1b5306ad942",
  "kind": "theorem",
  "lexical_name": "exists_pos_measure_of_not_restrict_le_zero",
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
  "slug": "exists-pos-measure-of-not-restrict-le-zero--87023c4cb30e0836befe0018",
  "source": {
    "blob": "ddfc7216ec62a1b531d5b38182a423063f2f2ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 229,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87023c4cb30e0836befe001897d138c15d2f128ef246522d598a00ae183befdc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12808918-aff7-f744-b09e-a1b5306ad942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_measure_of_not_restrict_le_zero (hi : ¬v ≤[i] 0) :
    ∃ j : Set α, MeasurableSet j ∧ j ⊆ i ∧ 0 < v j := by
  have hi₁ : MeasurableSet i := measurable_of_not_restrict_le_zero _ hi
  rw [restrict_le_restrict_iff _ _ hi₁] at hi
  push Not at hi
  exact hi

end

section

variable {M : Type*} [TopologicalSpace M] [AddCommMonoid M] [PartialOrder M]
  [AddLeftMono M] [ContinuousAdd M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddfc7216ec62a1b531d5b38182a423063f2f2ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
