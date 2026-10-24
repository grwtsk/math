# arithmeticStateNormBudget_eq_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb8ebf71764808c57fa0e61577513b676b03d8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70fa6b47-0b1d-60c6-2cd1-cad492163180",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4f0e590-0932-0712-651b-0131f319dd8b",
  "kind": "theorem",
  "lexical_name": "arithmeticStateNormBudget_eq_integrals",
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
  "slug": "arithmeticstatenormbudget-eq-integrals--a0b1e825945b2db7ec5ee628",
  "source": {
    "blob": "eb8ebf71764808c57fa0e61577513b676b03d8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0b1e825945b2db7ec5ee628eb597243e4b3abab3a92dbdb80cd7c6dd4a866b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f0e590-0932-0712-651b-0131f319dd8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticStateNormBudget_eq_integrals (A : ℝ) (hA : 1 ≤ A) :
    arithmeticStateNormBudget A hA =
      (∫ x : ℝ, (mangoldtForwardProfile A x) ^ 2) +
      ∫ x : ℝ, (centeredMobiusReflectedProfile A x) ^ 2 := by
  unfold arithmeticStateNormBudget mangoldtL2 centeredMobiusReflectedL2
  rw [forwardL2_norm_sq_eq_integral, reflectedL2_norm_sq_eq_integral]
  rfl

/-- A supplied bounded deformation acts on the same two literal arithmetic states. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/02SourceVaughanHankelFourier/Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb8ebf71764808c57fa0e61577513b676b03d8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
