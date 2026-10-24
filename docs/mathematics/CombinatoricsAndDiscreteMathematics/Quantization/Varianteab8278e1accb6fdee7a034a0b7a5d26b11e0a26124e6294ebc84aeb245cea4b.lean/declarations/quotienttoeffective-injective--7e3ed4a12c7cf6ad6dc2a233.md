# quotientToEffective_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18797435-3e1c-b950-11fc-056d2c6f9f50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:564acdfa-1680-a4e3-e841-1eb1b0da043e",
  "kind": "theorem",
  "lexical_name": "quotientToEffective_injective",
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
  "slug": "quotienttoeffective-injective--7e3ed4a12c7cf6ad6dc2a233",
  "source": {
    "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3ed4a12c7cf6ad6dc2a2333fd7c955376c65186b37982562b0a443161bf962",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:564acdfa-1680-a4e3-e841-1eb1b0da043e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientToEffective_injective
    (Q : NQuantizer Cfg rows columns) :
    Function.Injective Q.quotientToEffective := by
  intro left right equality
  induction left using Quotient.inductionOn with
  | _ leftRepresentative =>
    induction right using Quotient.inductionOn with
    | _ rightRepresentative =>
      apply Quotient.sound
      change Q.encode leftRepresentative = Q.encode rightRepresentative
      exact congrArg Subtype.val equality

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ef51f9eb8899a53d7b5443075ef0f178db45a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
