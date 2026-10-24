# invTransformSummable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7d5de1-67de-ef3e-bb1f-00723e411b4d",
  "kind": "lemma",
  "lexical_name": "invTransformSummable",
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
  "slug": "invtransformsummable--a9ce61221dbd7cdc27e45996",
  "source": {
    "blob": "3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ce61221dbd7cdc27e459964ac15b55ad1d0a185c064fe08c848f6159c62db5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7d5de1-67de-ef3e-bb1f-00723e411b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma invTransformSummable (F : ℤ_[p]⟦X⟧) (f : C(ℤ_[p], ℤ_[p])) :
    Summable fun i ↦ PadicInt.mahlerEquiv ℤ_[p] f i * F.coeff i := by
  apply NonarchimedeanAddGroup.summable_of_tendsto_cofinite_zero
  rw [tendsto_zero_iff_norm_tendsto_zero, ← Filter.cocompact_eq_cofinite]
  simp only [norm_mul, mul_comm _ ‖F.coeff _‖]
  apply bdd_le_mul_tendsto_zero'
  · filter_upwards with i
    simpa using PadicInt.norm_le_one _
  · rw [← tendsto_zero_iff_norm_tendsto_zero]
    exact ZeroAtInftyContinuousMap.zero_at_infty' _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
