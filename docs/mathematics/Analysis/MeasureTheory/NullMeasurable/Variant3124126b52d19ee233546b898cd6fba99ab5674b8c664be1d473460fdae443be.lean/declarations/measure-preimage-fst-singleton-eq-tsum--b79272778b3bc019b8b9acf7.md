# measure_preimage_fst_singleton_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bae37f99-f0f9-95b5-ef7e-a54e7636ca97",
  "kind": "lemma",
  "lexical_name": "measure_preimage_fst_singleton_eq_tsum",
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
  "slug": "measure-preimage-fst-singleton-eq-tsum--b79272778b3bc019b8b9acf7",
  "source": {
    "blob": "49d073ffc1454555ebb7fd4ae5a97e2c39805612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 371,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant3124126b52d19ee233546b898cd6fba99ab5674b8c664be1d473460fdae443be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b79272778b3bc019b8b9acf726537c4e9b18218661d5cd049839111c3c4d3f10",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Variant3124126b52d19ee233546b898cd6fba99ab5674b8c664be1d473460fdae443be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bae37f99-f0f9-95b5-ef7e-a54e7636ca97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_preimage_fst_singleton_eq_tsum [Countable β] (μ : Measure (α × β)) (x : α) :
    μ (Prod.fst ⁻¹' {x}) = ∑' y, μ {(x, y)} := by
  rw [← measure_iUnion (by simp [Pairwise]) fun _ ↦ .singleton _, iUnion_singleton_eq_range,
    preimage_fst_singleton_eq_range]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Variant3124126b52d19ee233546b898cd6fba99ab5674b8c664be1d473460fdae443be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant3124126b52d19ee233546b898cd6fba99ab5674b8c664be1d473460fdae443be.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d073ffc1454555ebb7fd4ae5a97e2c39805612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
