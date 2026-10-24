# absorbSequence_inverse_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8a321cd-7bf5-5ffd-3ac7-c709b9bb783a",
  "kind": "theorem",
  "lexical_name": "absorbSequence_inverse_forward",
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
  "slug": "absorbsequence-inverse-forward--5314a9f29e1c67c4d114a554",
  "source": {
    "blob": "0adba60e09f8db1290381d7bb42d94a3d72af692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5314a9f29e1c67c4d114a5545f98f34a0f86c4a6a74d4a4012b6cd1cf0a2f8ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a321cd-7bf5-5ffd-3ac7-c709b9bb783a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absorbSequence_inverse_forward
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (blocks : List Block)
    (state : F) :
    (absorbSequenceEquiv P inject blocks).symm
        (absorbSequenceEquiv P inject blocks state) = state :=
  (absorbSequenceEquiv P inject blocks).symm_apply_apply state

/-! ## Joint absorption is finite compression -/

/--
Absorbing an independent block together with the state into one finite state
cannot be injective when at least two blocks exist.  This argument uses only
domain/codomain cardinalities and does not assume a collision in `inject`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0adba60e09f8db1290381d7bb42d94a3d72af692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
