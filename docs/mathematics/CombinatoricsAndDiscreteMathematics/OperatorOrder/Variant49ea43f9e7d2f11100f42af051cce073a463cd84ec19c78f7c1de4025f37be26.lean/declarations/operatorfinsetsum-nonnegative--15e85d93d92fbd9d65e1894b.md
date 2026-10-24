# operatorFinsetSum_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c39aac8c-f91b-3f45-3369-82f4e663a498",
  "kind": "theorem",
  "lexical_name": "operatorFinsetSum_nonnegative",
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
  "slug": "operatorfinsetsum-nonnegative--15e85d93d92fbd9d65e1894b",
  "source": {
    "blob": "ba7a82fbd5f71529843b3709c2f61ee7dfdbeeff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e85d93d92fbd9d65e1894b6d9535a32774f91eb858d0c61db6950c9f926c9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39aac8c-f91b-3f45-3369-82f4e663a498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operatorFinsetSum_nonnegative
    (model : OperatorModel)
    {Index : Type uIndex}
    [DecidableEq Index]
    (indices : Finset Index)
    (operator : Index → model.Operator)
    (positive :
      ∀ index ∈ indices,
        model.Nonnegative (operator index)) :
    model.Nonnegative
      (∑ index ∈ indices, operator index) := by
  classical
  induction indices using Finset.induction_on with
  | empty =>
      simpa using model.zero_nonnegative
  | @insert index rest notMember induction =>
      rw [Finset.sum_insert notMember]
      exact model.add_nonnegative
        (positive index
          (Finset.mem_insert_self index rest))
        (induction (by
          intro member memberInRest
          exact positive member
            (Finset.mem_insert_of_mem
              memberInRest)))

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba7a82fbd5f71529843b3709c2f61ee7dfdbeeff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
