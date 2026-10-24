# source_harmonic_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d74d8f8d871b1d2ece204ca3bcf633387ed173e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:206e5a3e-3894-ade5-cdbd-2de6905c31bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a271425-3c61-3240-85b3-e8db6cfd3c89",
  "kind": "theorem",
  "lexical_name": "source_harmonic_sum_le",
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
  "slug": "source-harmonic-sum-le--d063a0b5d24895cabbe86363",
  "source": {
    "blob": "8d74d8f8d871b1d2ece204ca3bcf633387ed173e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 21,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d063a0b5d24895cabbe863639d1e316699e4ba00534818a76667d5866d3a5a6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a271425-3c61-3240-85b3-e8db6cfd3c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_harmonic_sum_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ)) ≤ 1 + A := by
  have he : 1 ≤ Real.exp A := (Real.one_le_exp_iff).mpr (by linarith)
  simpa only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast,
    one_div, Real.log_exp] using harmonic_floor_le_one_add_log (Real.exp A) he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variant4414048b578d3afe35fd2473c760d8a59e1445d48e3d5a46e23a38218838ee0c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d74d8f8d871b1d2ece204ca3bcf633387ed173e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
