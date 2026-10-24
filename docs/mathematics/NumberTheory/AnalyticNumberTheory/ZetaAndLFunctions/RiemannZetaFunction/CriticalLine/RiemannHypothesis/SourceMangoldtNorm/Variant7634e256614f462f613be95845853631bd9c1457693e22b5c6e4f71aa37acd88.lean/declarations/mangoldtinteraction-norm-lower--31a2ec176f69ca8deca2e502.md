# mangoldtInteraction_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda01a1c-dba8-0e4d-bdfb-e345fe89b0b3",
  "kind": "theorem",
  "lexical_name": "mangoldtInteraction_norm_lower",
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
  "slug": "mangoldtinteraction-norm-lower--31a2ec176f69ca8deca2e502",
  "source": {
    "blob": "77d19bad9402b751d89c70410c3d4c73002dfe24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 243,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31a2ec176f69ca8deca2e50255325db89c0020bbdd753d139a85f9f8b63de258",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda01a1c-dba8-0e4d-bdfb-e345fe89b0b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtInteraction_norm_lower {A : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 1 ≤ ‖mangoldtInteraction A‖ := by
  have hx : 1 ≤ Real.exp (2 * A) := Real.one_le_exp_iff.mpr (by linarith)
  have hN : 1 ≤ ⌊Real.exp (2 * A)⌋₊ := (Nat.one_le_floor_iff _).mpr hx
  have hm := (weightedMangoldt_sub_log_bounds ⌊Real.exp (2 * A)⌋₊ hN).1
  have hf := (abs_le.mp (log_floor_error (Real.exp (2 * A)) hx)).1
  rw [Real.log_exp] at hf
  have hw := weightedMangoldt_le_mass A
  rw [mangoldtInteraction_norm_eq_mass]
  linarith

/-- The actual family admits no eventual uniform full operator-norm budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d19bad9402b751d89c70410c3d4c73002dfe24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
