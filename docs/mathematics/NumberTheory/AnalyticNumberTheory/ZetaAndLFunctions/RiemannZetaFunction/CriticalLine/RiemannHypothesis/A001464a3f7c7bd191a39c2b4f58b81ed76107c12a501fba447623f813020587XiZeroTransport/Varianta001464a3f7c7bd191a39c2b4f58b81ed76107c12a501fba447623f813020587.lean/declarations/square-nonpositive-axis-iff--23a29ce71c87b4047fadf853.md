# square_nonpositive_axis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d20fc0022c234671ad51998014332df35c50bf70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f07d8a8-9e0d-4b2c-a24e-bf8e70d537ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9cb6a3f-0c7b-d857-e805-3d1abf9462fa",
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
  "slug": "square-nonpositive-axis-iff--23a29ce71c87b4047fadf853",
  "source": {
    "blob": "d20fc0022c234671ad51998014332df35c50bf70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23a29ce71c87b4047fadf8531960d6c4f82747839f3c31083f8a3c79c21a74a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9cb6a3f-0c7b-d857-e805-3d1abf9462fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20fc0022c234671ad51998014332df35c50bf70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
