# derivativeMajorant_le_pSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c983f385-5982-641e-c4ce-3779cb74a424",
  "kind": "theorem",
  "lexical_name": "derivativeMajorant_le_pSeries",
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
  "slug": "derivativemajorant-le-pseries--f0a845ead120bde7e685487d",
  "source": {
    "blob": "0a9e84fa1acbcece9352cf741ff74412100b4d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a845ead120bde7e685487dfb6a5612d0f83fe89e5d03971010bdb45590d44e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c983f385-5982-641e-c4ce-3779cb74a424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeMajorant_le_pSeries {n : ℕ} (hn : 0 < n) :
    derivativeMajorant n ≤ 5/(n:ℝ)^((5:ℝ)/4) := by
  have hn0 : 0 < (n:ℝ) := by exact_mod_cast hn
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast (show 1≤n by omega)
  have hlog := Real.log_natCast_le_rpow_div n (by norm_num : (0:ℝ)<1/4)
  have hq : 1 ≤ (n:ℝ)^((1:ℝ)/4) := Real.one_le_rpow hn1 (by norm_num)
  have hl2 : Real.log (2:ℝ) ≤ 1 := by
    simpa using Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ)<2)
  have hl : Real.log (n+1:ℝ) ≤ 5*(n:ℝ)^((1:ℝ)/4) := by
    have hc : Real.log (n+1:ℝ) ≤ Real.log (2*(n:ℝ)) :=
      Real.log_le_log (by positivity) (by linarith)
    rw [Real.log_mul (by norm_num) hn0.ne'] at hc
    norm_num at hlog
    nlinarith
  unfold derivativeMajorant
  calc
    _ ≤ (5*(n:ℝ)^((1:ℝ)/4))/(n:ℝ)^((3:ℝ)/2) :=
      div_le_div_of_nonneg_right hl (Real.rpow_pos_of_pos hn0 _).le
    _ = 5/(n:ℝ)^((5:ℝ)/4) := by
      rw [show (3:ℝ)/2=1/4+5/4 by norm_num,Real.rpow_add hn0]
      field_simp [(Real.rpow_pos_of_pos hn0 ((1:ℝ)/4)).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9e84fa1acbcece9352cf741ff74412100b4d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
