# halving_surjective_not_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3389b484cbd6d2871358b66e90d8ba2f20b5728c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 739,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56e5afa4-deae-655b-4680-e3c52708023e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85231ce3-b2dd-2f1c-2120-b04fdda0e026",
  "kind": "theorem",
  "lexical_name": "halving_surjective_not_injective",
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
  "slug": "halving-surjective-not-injective--4df38ae12069e00ec7d2e115",
  "source": {
    "blob": "3389b484cbd6d2871358b66e90d8ba2f20b5728c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 739,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4df38ae12069e00ec7d2e1151473691471449530178e617e5a6b9472fa9a0aef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85231ce3-b2dd-2f1c-2120-b04fdda0e026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halving_surjective_not_injective :
    Function.Surjective (fun input : Nat => input / 2) ∧
      ¬ Function.Injective (fun input : Nat => input / 2) := by
  constructor
  · intro output
    refine ⟨2 * output, ?_⟩
    calc
      (2 * output) / 2 = (output * 2) / 2 := by rw [Nat.mul_comm]
      _ = output := Nat.mul_div_left output (by omega)
  · intro injective
    have sameOutput : (0 : Nat) / 2 = 1 / 2 := by decide
    have impossible : (0 : Nat) = 1 := injective sameOutput
    omega

/-- Even naturals biject with naturals, while their domain remains proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3389b484cbd6d2871358b66e90d8ba2f20b5728c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
