# exists_variableChange_of_j_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58722997b352a3118099a7d9552a0f25e58d69a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a38fccf-3f5c-8a3e-83b5-66486f806ff5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44892fe9-1d0b-208d-77ff-07b31fe36200",
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
  "slug": "exists-variablechange-of-j-eq--933f82c5d7ee39cfb4db2c77",
  "source": {
    "blob": "58722997b352a3118099a7d9552a0f25e58d69a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 331,
    "path": "GRWTSK/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:933f82c5d7ee39cfb4db2c778289a4e3f8a6748ac286ae9ee13381d082daa344",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44892fe9-1d0b-208d-77ff-07b31fe36200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–341.

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

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58722997b352a3118099a7d9552a0f25e58d69a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
