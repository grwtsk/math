# xi_zero_iff_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f704357-f1ae-4b7d-09b5-8f20239d99b5",
  "kind": "theorem",
  "lexical_name": "xi_zero_iff_nontrivial",
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
  "slug": "xi-zero-iff-nontrivial--1b533f2395bc8ed0b3a86cde",
  "source": {
    "blob": "2012bddeec7651acd30fa01c9adea972531c7210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b533f2395bc8ed0b3a86cde42e7106f92425c13ab73e0ca4949c6c54b832d56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f704357-f1ae-4b7d-09b5-8f20239d99b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_zero_iff_nontrivial (s : ℂ) : xi s = 0 ↔ NontrivialZetaZero s := by
  constructor
  · intro hz
    have h0 : s ≠ 0 := by intro h; subst s; simp [xi_zero] at hz
    have h1 : s ≠ 1 := by intro h; subst s; simp [xi_one] at hz
    refine ⟨?_, ?_, h1⟩
    · rw [zeta_recover h0 h1, hz]
      simp
    · rintro ⟨n, rfl⟩
      exact xi_ne_zero_at_trivial n hz
  · intro hz
    have hc : completedRiemannZeta s = 0 := by
      have h := hz.1
      rw [riemannZeta_def_of_ne_zero hz.ne_zero] at h
      exact (div_eq_zero_iff.mp h).resolve_right hz.gamma_real_ne_zero
    rw [xi_eq_completed hz.ne_zero hz.2.2, hc]
    simp

/-- The square map's closed-negative-axis criterion is exact even at its branch point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2012bddeec7651acd30fa01c9adea972531c7210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
