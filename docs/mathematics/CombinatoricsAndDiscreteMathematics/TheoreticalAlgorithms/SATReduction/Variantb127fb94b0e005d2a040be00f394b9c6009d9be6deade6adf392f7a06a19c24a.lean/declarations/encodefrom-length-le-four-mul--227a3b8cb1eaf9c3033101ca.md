# encodeFrom_length_le_four_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eeedc2308ebd3be2b678f4a06e6c77347eb45057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c9ebd0f-062f-ae92-d3d5-3901293a14aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:925e692b-4103-c652-d1a9-636dac3feb86",
  "kind": "theorem",
  "lexical_name": "encodeFrom_length_le_four_mul",
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
  "slug": "encodefrom-length-le-four-mul--227a3b8cb1eaf9c3033101ca",
  "source": {
    "blob": "eeedc2308ebd3be2b678f4a06e6c77347eb45057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 317,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227a3b8cb1eaf9c3033101cae846aaaf588c07091cc4fe3e9b41796abddf7bdd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:925e692b-4103-c652-d1a9-636dac3feb86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encodeFrom_length_le_four_mul (next : Nat) (gates : List Gate) :
    (encodeFrom next gates).length ≤ 4 * gates.length := by
  induction gates generalizing next with
  | nil => simp [encodeFrom]
  | cons gate gates ih =>
      simp only [encodeFrom, List.length_append, encodeGate_length,
        List.length_cons, Nat.mul_add]
      have hgate := Gate.clauseCount_le_four gate
      have hrest := ih (next := next + 1)
      omega

/--
A Boolean circuit with `n` inputs and `m` outputs.

The dependent output type ensures that every designated output refers to one of
`n + gates.length` allocated input/gate wires.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantb127fb94b0e005d2a040be00f394b9c6009d9be6deade6adf392f7a06a19c24a.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeedc2308ebd3be2b678f4a06e6c77347eb45057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
