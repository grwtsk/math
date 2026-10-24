# actual_alpha_modulus_recovery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5df05e8-7655-ae7f-c042-a1f5cc2fdad6",
  "kind": "theorem",
  "lexical_name": "actual_alpha_modulus_recovery",
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
  "slug": "actual-alpha-modulus-recovery--54947038bc516104fff70f61",
  "source": {
    "blob": "41dad0ea93c42839b08ffeab3c76022c6cfae075",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 42,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant74ba52172f36b9c1d6265e4ad28b7254d3f6e5002793b6546c138ab3d8111f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54947038bc516104fff70f61599fff5289b6dfc1537f2ffdcce94f17e215c3e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant74ba52172f36b9c1d6265e4ad28b7254d3f6e5002793b6546c138ab3d8111f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5df05e8-7655-ae7f-c042-a1f5cc2fdad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_alpha_modulus_recovery (U : ℕ) (hU : 1 ≤ U) :
    (U : ℝ) * alpha U = 1 +
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ) := by
  classical
  have hc (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      (U : ℝ) / (d : ℝ) = ((U / d : ℕ) : ℝ) + ((U % d : ℕ) : ℝ) / (d : ℝ) := by
    have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast (show d ≠ 0 by
      have := (Finset.mem_Icc.mp hd).1; omega)
    have hdiv : ((U / d : ℕ) : ℝ) * (d : ℝ) + ((U % d : ℕ) : ℝ) = (U : ℝ) := by
      exact_mod_cast (Nat.div_add_mod U d)
    field_simp
    nlinarith only [hdiv]
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U : ℝ) / (d : ℝ)) := by
      unfold alpha
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ = (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) +
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ) := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro d hd
      rw [hc d hd]
      ring
    _ = _ := by rw [actual_quotient_moebius_sum U hU]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant74ba52172f36b9c1d6265e4ad28b7254d3f6e5002793b6546c138ab3d8111f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant74ba52172f36b9c1d6265e4ad28b7254d3f6e5002793b6546c138ab3d8111f91.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41dad0ea93c42839b08ffeab3c76022c6cfae075` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
