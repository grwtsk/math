# realThetaKernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d740d1f1eef9515fee65bab4f201cff40db1876c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8576b704-19bb-e7c7-9721-cc833bfb9459",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:798e5f71-37a1-99a7-7370-077872c5db73",
  "kind": "theorem",
  "lexical_name": "realThetaKernel_hasDerivAt",
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
  "slug": "realthetakernel-hasderivat--ea9cecc9382732cbbaad5f78",
  "source": {
    "blob": "d740d1f1eef9515fee65bab4f201cff40db1876c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea9cecc9382732cbbaad5f78340d4d0d7619de4b6406cdb423554a62a40ebd2d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798e5f71-37a1-99a7-7370-077872c5db73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realThetaKernel_hasDerivAt (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaKernel A)
      (1 / q * realThetaDifferenceKernel A q) q := by
  have hd := HasDerivAt.fun_sum (u := Icc 1 ⌊Real.exp (2 * A)⌋₊)
    (fun k hk ↦ (sourceSamplingKernel_hasDerivAt A (q * (k : ℝ)) hA
      (mul_pos hq (by exact_mod_cast (show 0 < k by have := (mem_Icc.mp hk).1; omega)))).comp q
      (by simpa only [id_eq, one_mul] using (hasDerivAt_id q).mul_const (k : ℝ)))
  apply hd.congr_deriv
  rw [realThetaDifferenceKernel, mul_sum]
  apply sum_congr rfl
  intro k hk
  have hk0 : (k : ℝ) ≠ 0 := by
    exact_mod_cast (show k ≠ 0 by have := (mem_Icc.mp hk).1; omega)
  unfold differenceSamplingKernel
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d740d1f1eef9515fee65bab4f201cff40db1876c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
