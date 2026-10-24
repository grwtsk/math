# phiHat_moment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5172f9b-d4af-4b04-a8d4-a44eeb4192d5",
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
  "slug": "phihat-moment-bound--df642d87b9ebaca038cb2eed",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 385,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df642d87b9ebaca038cb2eed32e500cfa4debebe12a3715f762d56ad31f50e1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5172f9b-d4af-4b04-a8d4-a44eeb4192d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–401.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
