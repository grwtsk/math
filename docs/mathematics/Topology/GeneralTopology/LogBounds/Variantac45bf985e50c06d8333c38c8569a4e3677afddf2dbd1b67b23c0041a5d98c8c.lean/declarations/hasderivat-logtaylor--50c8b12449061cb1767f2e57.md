# hasDerivAt_logTaylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c37eb735ffa490a848dc1e3302813ea2349c71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:853993d6-4812-c4a8-f737-144078aac029",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcad40a2-9a72-8bd4-1955-99a538ec5c44",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_logTaylor",
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
  "slug": "hasderivat-logtaylor--50c8b12449061cb1767f2e57",
  "source": {
    "blob": "45c37eb735ffa490a848dc1e3302813ea2349c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c8b12449061cb1767f2e57b29b158c311aa75fed3b0d5ad8ed5120d6831048",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcad40a2-9a72-8bd4-1955-99a538ec5c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_logTaylor (n : ℕ) (z : ℂ) :
    HasDerivAt (logTaylor (n + 1)) (∑ j ∈ Finset.range n, (-1) ^ j * z ^ j) z := by
  induction n with
  | zero => simp [logTaylor_succ, logTaylor_zero, Pi.add_def, hasDerivAt_const]
  | succ n ih =>
    rw [logTaylor_succ]
    simp only [cpow_natCast, Nat.cast_add, Nat.cast_one, ← Nat.not_even_iff_odd,
      Finset.sum_range_succ, (show (-1) ^ (n + 1 + 1) = (-1) ^ n by ring)]
    refine HasDerivAt.add ih ?_
    simp only [← Nat.not_even_iff_odd, Int.cast_pow, Int.cast_neg, Int.cast_one, mul_div_assoc]
    have : HasDerivAt (fun x : ℂ ↦ (x ^ (n + 1) / (n + 1))) (z ^ n) z := by
      simp_rw [div_eq_mul_inv]
      convert HasDerivAt.mul_const (hasDerivAt_pow (n + 1) z) (((n : ℂ) + 1)⁻¹) using 1
      field_simp [Nat.cast_add_one_ne_zero n]
    convert HasDerivAt.const_mul _ this using 2
    ring

/-!
### Bounds for the difference between log and its Taylor polynomials
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c37eb735ffa490a848dc1e3302813ea2349c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
