# excluded_density_source_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c92dcbd-dd1c-244c-2859-382de0834b85",
  "kind": "theorem",
  "lexical_name": "excluded_density_source_multiplicative",
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
  "slug": "excluded-density-source-multiplicative--929ccb072f6e5a871875a56b",
  "source": {
    "blob": "ec32300bf299f877ea008ae059bbfe079b649a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929ccb072f6e5a871875a56ba772105ff29b12d2a35297e240ae494f28242553",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c92dcbd-dd1c-244c-2859-382de0834b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem excluded_density_source_multiplicative (d : ℕ) :
    (excludedDensityMoebius d).IsMultiplicative := by
  refine ⟨excluded_density_source_one d, ?_⟩
  intro m n h
  simp only [excluded_density_source_apply, Nat.coprime_mul_iff_left]
  by_cases hm : m.Coprime d
  · by_cases hn : n.Coprime d
    · rw [if_pos ⟨hm, hn⟩, if_pos hm, if_pos hn, density_coefficient_mul_of_coprime h]
    · simp only [if_neg ((fun h : m.Coprime d ∧ n.Coprime d => hn h.2)), if_neg hn, mul_zero]
  · simp only [if_neg ((fun h : m.Coprime d ∧ n.Coprime d => hm h.1)), if_neg hm, zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec32300bf299f877ea008ae059bbfe079b649a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
