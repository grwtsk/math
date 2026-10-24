# isLeftRegular_of_le_isCancelMulZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a26f3a24bd4d01497718324097565fe5c1a1dd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25915be4-ba26-c009-c8c7-73e9b9a1c095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:250347dd-eeb9-7405-7fbc-df97958dd569",
  "kind": "theorem",
  "lexical_name": "isLeftRegular_of_le_isCancelMulZero",
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
  "slug": "isleftregular-of-le-iscancelmulzero--238c0fcb01693873f224bc1c",
  "source": {
    "blob": "5a26f3a24bd4d01497718324097565fe5c1a1dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238c0fcb01693873f224bc1c96788993852180069ee15ca443745748d0d32886",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:250347dd-eeb9-7405-7fbc-df97958dd569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLeftRegular_of_le_isCancelMulZero (f : LocalizationWithZeroMap S N)
    [IsCancelMulZero M] (h : ∀ ⦃x⦄, x ∈ S → IsRegular x) : IsCancelMulZero N := by
  have : IsLeftCancelMulZero N :=
    leftCancelMulZero_of_le_isLeftRegular f (fun x h' => (h h').left)
  exact IsLeftCancelMulZero.to_isCancelMulZero

end LocalizationWithZeroMap

end Submonoid

end CommMonoidWithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a26f3a24bd4d01497718324097565fe5c1a1dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
