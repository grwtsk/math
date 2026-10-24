# conts_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c05fb47e27565b28e2669e57b5222a564bebb26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d27da4cd-5cec-438c-e35b-ed7d02b38303",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59440074-b5ed-5357-26df-482eef4d00af",
  "kind": "theorem",
  "lexical_name": "conts_recurrence",
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
  "slug": "conts-recurrence--cbd7e72164f57ae309a31ac4",
  "source": {
    "blob": "0c05fb47e27565b28e2669e57b5222a564bebb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd7e72164f57ae309a31ac48b9bb3f7561dda3a176796aa899f1d2697ab7327",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59440074-b5ed-5357-26df-482eef4d00af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conts_recurrence {gp ppred pred : Pair K} (succ_nth_s_eq : g.s.get? (n + 1) = some gp)
    (nth_conts_eq : g.conts n = ppred) (succ_nth_conts_eq : g.conts (n + 1) = pred) :
    g.conts (n + 2) = ⟨gp.b * pred.a + gp.a * ppred.a, gp.b * pred.b + gp.a * ppred.b⟩ := by
  rw [nth_cont_eq_succ_nth_contAux] at nth_conts_eq succ_nth_conts_eq
  exact conts_recurrenceAux succ_nth_s_eq nth_conts_eq succ_nth_conts_eq

/-- Shows that `Aₙ = bₙ * Aₙ₋₁ + aₙ * Aₙ₋₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c05fb47e27565b28e2669e57b5222a564bebb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
