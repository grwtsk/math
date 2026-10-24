# summable_coeff_mul_k

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6633a44-2e24-2821-54f4-7657acdf8988",
  "kind": "theorem",
  "lexical_name": "summable_coeff_mul_k",
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
  "slug": "summable-coeff-mul-k--b63bab42a6b8b2c443abb664",
  "source": {
    "blob": "f1a259643247a992566d589c6fc03a323f3e05d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b63bab42a6b8b2c443abb6640f4d7bca5be99c047e6b9a2fb01fe8611d79705d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6633a44-2e24-2821-54f4-7657acdf8988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_coeff_mul_k {k : ℝ → ℂ} {L : ℝ} (hks : tsupport k ⊆ Icc (-L) L) (c : ℕ → ℂ) (sgn : Bool) :
    Summable (fun N : ℕ => c N / ((Real.sqrt N : ℝ) : ℂ) *
      k (if sgn then Real.log N else -Real.log N)) := by
  refine summable_of_hasFiniteSupport ((Set.finite_Iic ⌈Real.exp L⌉₊).subset ?_)
  intro N hN
  rw [Function.mem_support] at hN
  rw [Set.mem_Iic]
  by_contra h
  push Not at h
  have hN' : Real.exp L < (N : ℝ) := lt_of_le_of_lt (Nat.le_ceil _) (by exact_mod_cast h)
  obtain ⟨h1, h2⟩ := k_log_eq_zero hks hN'
  apply hN
  cases sgn <;> simp [h1, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiEFAssembly/Variant1c8778fdafeca2df6693c5e6725b6c209bf7ac4277afdfbe29241eea1c4cba84.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a259643247a992566d589c6fc03a323f3e05d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
