# antidiagonalTuple_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17ddeaa1-7585-6190-5b9e-e7d32f73b81a",
  "kind": "theorem",
  "lexical_name": "antidiagonalTuple_one",
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
  "slug": "antidiagonaltuple-one--5f0dd499beb0d9dc7292c986",
  "source": {
    "blob": "a4a037559f0b86a711d85b284f878a1165649818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f0dd499beb0d9dc7292c98639f2970a1b666e19b5732278874ba69a187ce2ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ddeaa1-7585-6190-5b9e-e7d32f73b81a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonalTuple_one (n : ℕ) : antidiagonalTuple 1 n = [![n]] := by
  simp_rw [antidiagonalTuple, antidiagonal, List.range_succ, List.map_append, List.map_singleton,
    tsub_self, List.append_bind, List.bind_singleton, List.map_bind]
  conv_rhs => rw [← List.nil_append [![n]]]
  congr 1
  simp_rw [List.bind_eq_nil, List.mem_range, List.map_eq_nil]
  intro x hx
  obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_lt hx
  rw [add_assoc, add_tsub_cancel_left, antidiagonalTuple_zero_succ]
#align list.nat.antidiagonal_tuple_one List.Nat.antidiagonalTuple_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4a037559f0b86a711d85b284f878a1165649818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
