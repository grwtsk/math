# orderedBlockEquivParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa53af07c473cea4d7b08c18a1cfa0b2accc7c5f60edd0a5df14dd337bd75b95",
  "kind": "def",
  "lexical_name": "orderedBlockEquivParts",
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
  "slug": "orderedblockequivparts--5c6cc9ebee7fa4ad3260e3bf",
  "source": {
    "blob": "2277a01aa090dd6dd1a563d780e2ea4d74cba32c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c6cc9ebee7fa4ad3260e3bf7f712f019d7d0615d0b75477d37378c5f8f5400a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa53af07c473cea4d7b08c18a1cfa0b2accc7c5f60edd0a5df14dd337bd75b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def orderedBlockEquivParts {n : ℕ}
    (c : OrderedFinpartition n) :
    Fin c.length ≃ (orderedToDirectionPartition c).parts :=
  Equiv.ofBijective (orderedBlockPart c) <| by
    constructor
    · intro m k h
      apply orderedBlock_injective c
      exact congrArg Subtype.val h
    · intro B
      obtain ⟨B, hB⟩ := B
      rw [orderedToDirectionPartition_parts, orderedBlocks] at hB
      obtain ⟨m, hm, hBm⟩ := Finset.mem_image.1 hB
      refine ⟨m, ?_⟩
      apply Subtype.ext
      exact hBm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2277a01aa090dd6dd1a563d780e2ea4d74cba32c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
