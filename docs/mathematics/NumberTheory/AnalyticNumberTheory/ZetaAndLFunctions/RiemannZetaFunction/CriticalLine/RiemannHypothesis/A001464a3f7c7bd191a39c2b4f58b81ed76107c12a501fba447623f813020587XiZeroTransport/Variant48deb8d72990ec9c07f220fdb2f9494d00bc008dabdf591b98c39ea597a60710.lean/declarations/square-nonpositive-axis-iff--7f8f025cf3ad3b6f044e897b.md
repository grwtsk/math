# square_nonpositive_axis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6023db4d-d096-911e-4621-9568791b9cb5",
  "kind": "theorem",
  "lexical_name": "square_nonpositive_axis_iff",
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
  "slug": "square-nonpositive-axis-iff--7f8f025cf3ad3b6f044e897b",
  "source": {
    "blob": "2012bddeec7651acd30fa01c9adea972531c7210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f8f025cf3ad3b6f044e897b14405773fdfe017be9f7d254a47ff2c3008f4f19",
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

Occurrence: `result:6023db4d-d096-911e-4621-9568791b9cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_nonpositive_axis_iff (u : ℂ) :
    (u ^ 2).im = 0 ∧ (u ^ 2).re ≤ 0 ↔ u.re = 0 := by
  simp only [pow_two, Complex.mul_re, Complex.mul_im]
  constructor
  · rintro ⟨hi, hr⟩
    have hprod : u.re * u.im = 0 := by nlinarith [hi]
    rcases mul_eq_zero.mp hprod with h | h
    · exact h
    · rw [h] at hr
      nlinarith [sq_nonneg u.re]
  · intro h
    rw [h]
    constructor
    · ring
    · nlinarith [sq_nonneg u.im]

/-- Every zero of the exact descended series lies on the closed negative real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Variant48deb8d72990ec9c07f220fdb2f9494d00bc008dabdf591b98c39ea597a60710.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2012bddeec7651acd30fa01c9adea972531c7210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
