# exists_variableChange_of_j_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc7b7469-f620-75cb-11a2-b4f5ef622d75",
  "kind": "theorem",
  "lexical_name": "exists_variableChange_of_j_eq",
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
  "slug": "exists-variablechange-of-j-eq--b1cb6c785b5e36e9634d1663",
  "source": {
    "blob": "44f09bbf76991cb0401c158eb250a5141b6a982b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 337,
    "path": "GRWTSK/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1cb6c785b5e36e9634d1663724a5628631b72e79c0302c124e3b5558e7c94dc",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc7b7469-f620-75cb-11a2-b4f5ef622d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_variableChange_of_j_eq (heq : E.j = E'.j) : ∃ C : VariableChange F, C • E = E' := by
  obtain ⟨p, _⟩ := CharP.exists F
  by_cases hchar2 : p = 2
  · subst hchar2
    exact exists_variableChange_of_char_two _ _ heq
  by_cases hchar3 : p = 3
  · subst hchar3
    exact exists_variableChange_of_char_three _ _ heq
  exact exists_variableChange_of_char_ne_two_or_three _ _ hchar2 hchar3 heq

end WeierstrassCurve
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f09bbf76991cb0401c158eb250a5141b6a982b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
