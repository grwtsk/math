# le_iff_norm_sqrt_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0acd87b2-5196-ddf1-1759-173802785385",
  "kind": "lemma",
  "lexical_name": "le_iff_norm_sqrt_mul_rpow",
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
  "slug": "le-iff-norm-sqrt-mul-rpow--93c7833815f70ca072f00f5b",
  "source": {
    "blob": "ecb8aff199709e4025859741470e658246b3f3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93c7833815f70ca072f00f5bf5dcbdf6cf1a24fafa5b6316e3dacc1fa6d70cf8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0acd87b2-5196-ddf1-1759-173802785385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_iff_norm_sqrt_mul_rpow {a b : A} (hbu : IsUnit b) (ha : 0 ≤ a) (hb : 0 ≤ (b : A)) :
    a ≤ b ↔ ‖sqrt a * (b : A) ^ (-(1 / 2) : ℝ)‖ ≤ 1 := by
  lift b to Aˣ using hbu
  have hbab : 0 ≤ (b : A) ^ (-(1 / 2) : ℝ) * a * (b : A) ^ (-(1 / 2) : ℝ) :=
    conjugate_nonneg_of_nonneg ha rpow_nonneg
  #adaptation_note /-- 2024-11-10
  added `(R := A)` -/
  conv_rhs =>
    rw [← sq_le_one_iff₀ (norm_nonneg _), sq, ← CStarRing.norm_star_mul_self, star_mul,
      IsSelfAdjoint.of_nonneg (R := A) sqrt_nonneg, IsSelfAdjoint.of_nonneg rpow_nonneg,
      ← mul_assoc, mul_assoc _ _ (sqrt a), sqrt_mul_sqrt_self a,
      CStarAlgebra.norm_le_one_iff_of_nonneg _ hbab]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · calc
      _ ≤ ↑b ^ (-(1 / 2) : ℝ) * (b : A) * ↑b ^ (-(1 / 2) : ℝ) :=
        IsSelfAdjoint.of_nonneg rpow_nonneg |>.conjugate_le_conjugate h
      _ = 1 := conjugate_rpow_neg_one_half b.isUnit
  · calc
      a = (sqrt ↑b * ↑b ^ (-(1 / 2) : ℝ)) * a * (↑b ^ (-(1 / 2) : ℝ) * sqrt ↑b) := by
        simp only [CFC.sqrt_eq_rpow .., ← CFC.rpow_add (b.zero_notMem_spectrum ℝ≥0)]
        norm_num
        simp [CFC.rpow_zero (b : A)]
      _ = sqrt ↑b * (↑b ^ (-(1 / 2) : ℝ) * a * ↑b ^ (-(1 / 2) : ℝ)) * sqrt ↑b := by
        simp only [mul_assoc]
      _ ≤ b := conjugate_le_conjugate_of_nonneg h sqrt_nonneg |>.trans <| by
        simp [CFC.sqrt_mul_sqrt_self (b : A)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb8aff199709e4025859741470e658246b3f3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
