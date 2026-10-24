# ZetaInvBnd_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd974a86-7683-c007-4cfd-26342964c0c3",
  "kind": "lemma",
  "lexical_name": "ZetaInvBnd_aux2",
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
  "slug": "zetainvbnd-aux2--a18c11ebf18cd3f3e1258a39",
  "source": {
    "blob": "abc3064379e29e75a5447a19e19b00c9cedea29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2919,
    "line": 2871,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a18c11ebf18cd3f3e1258a39fd7ead68aec936d249252f1a0f09d7c72ff9ea74",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd974a86-7683-c007-4cfd-26342964c0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2871–2919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZetaInvBnd_aux2 {A C₁ C₂ : ℝ} (Apos : 0 < A) (C₁pos : 0 < C₁) (C₂pos : 0 < C₂)
    (hA : A ≤ 1 / 2 * (C₁ / (C₂ * 2)) ^ (4 : ℝ)) :
    0 < (C₁ * A ^ (3 / 4 : ℝ) - C₂ * 2 * A)⁻¹ := by
  simp only [inv_pos, sub_pos]
  apply div_lt_iff₀ (by positivity) |>.mp
  rw [div_eq_mul_inv, ← Real.rpow_neg (by positivity), mul_assoc]
  apply lt_div_iff₀' (by positivity) |>.mp
  nth_rewrite 1 [← Real.rpow_one A]
  rw [← Real.rpow_add (by positivity)]
  norm_num
  apply Real.rpow_lt_rpow_iff (z := 4) (by positivity) (by positivity) (by positivity) |>.mp
  rw [← Real.rpow_mul (by positivity)]
  norm_num
  apply lt_of_le_of_lt hA
  rw [div_mul_comm, mul_one, Real.rpow_ofNat]
  apply half_lt_self
  positivity


@[blueprint
  (title := "ZetaInvBnd")
  (statement := /--
  For any $A>0$ sufficiently small, there is a constant $C>0$ so that
  whenever $1- A / \log^9 |t| \le \sigma < 1+A/\log^9 |t|$ and $3 < |t|$, we have that:
  $$
  1/|\zeta(\sigma+it)| \le C \log^7 |t|.
  $$
  -/)
  (proof := /--
  Let $\sigma$ be given in the prescribed range, and set $\sigma' := 1+ A / \log^9 |t|$.
  Then
  $$
  |\zeta(\sigma+it)| \ge
  |\zeta(\sigma'+it)| - |\zeta(\sigma+it) - \zeta(\sigma'+it)|
  \ge
  C (\sigma'-1)^{3/4}\log |t|^{-1/4} - C \log^2 |t| (\sigma'-\sigma)
  $$
  $$
  \ge
  C A^{3/4} \log |t|^{-7} - C \log^2 |t| (2 A / \log^9 |t|),
  $$
  where we used Lemma \ref{ZetaInvBound2}  and Lemma \ref{Zeta_diff_Bnd}.
  Now by making $A$ sufficiently small (in particular, something like $A = 1/16$ should work), we can guarantee that
  $$
  |\zeta(\sigma+it)| \ge \frac C 2 (\log |t|)^{-7},
  $$
  as desired.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean#L2871).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc3064379e29e75a5447a19e19b00c9cedea29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
