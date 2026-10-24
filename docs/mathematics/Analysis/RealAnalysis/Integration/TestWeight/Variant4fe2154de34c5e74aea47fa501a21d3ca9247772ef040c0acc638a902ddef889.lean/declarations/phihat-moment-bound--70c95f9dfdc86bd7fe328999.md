# phiHat_moment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2257e618-48ea-d257-34eb-189d95a7c905",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74d55c06-3109-ace5-2789-9fab9eaf6732",
  "kind": "theorem",
  "lexical_name": "phiHat_moment_bound",
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
  "slug": "phihat-moment-bound--70c95f9dfdc86bd7fe328999",
  "source": {
    "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 377,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c95f9dfdc86bd7fe328999ae21525ef9c61db6bb819159fdb54ec3363195d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74d55c06-3109-ace5-2789-9fab9eaf6732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phiHat_moment_bound (h : WindowAt P T C) (z : ℂ) :
    ‖z‖ * ‖P.phiHat T z‖ * (1 + z.re ^ 2) ≤ 2 * C * Real.exp (|z.im| * (P.L T / 2)) := by
  have he := Real.exp_pos (|z.im| * (P.L T / 2))
  have h1 : ‖P.phiHat T z‖ * ‖z‖ ≤ Real.exp (|z.im| * (P.L T / 2)) * C :=
    (norm_paperFT_mul_le (h.phiC_contDiff.of_le (by norm_num)) h.phiC_supp z).trans
      (mul_le_mul_of_nonneg_left h.integral_norm_deriv_phiC_le he.le)
  have h3 : ‖P.phiHat T z‖ * ‖z‖ ^ 3 ≤ Real.exp (|z.im| * (P.L T / 2)) * C :=
    (norm_paperFT_mul_cube_le h.phiC_contDiff h.phiC_supp z).trans
      (mul_le_mul_of_nonneg_left h.integral_norm_deriv3_phiC_le he.le)
  have hre := re_sq_le_norm_sq z
  calc ‖z‖ * ‖P.phiHat T z‖ * (1 + z.re ^ 2)
      = ‖P.phiHat T z‖ * ‖z‖ + ‖P.phiHat T z‖ * ‖z‖ * z.re ^ 2 := by ring
    _ ≤ ‖P.phiHat T z‖ * ‖z‖ + ‖P.phiHat T z‖ * ‖z‖ * ‖z‖ ^ 2 := by gcongr
    _ = ‖P.phiHat T z‖ * ‖z‖ + ‖P.phiHat T z‖ * ‖z‖ ^ 3 := by ring
    _ ≤ Real.exp (|z.im| * (P.L T / 2)) * C + Real.exp (|z.im| * (P.L T / 2)) * C := add_le_add h1 h3
    _ = 2 * C * Real.exp (|z.im| * (P.L T / 2)) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
