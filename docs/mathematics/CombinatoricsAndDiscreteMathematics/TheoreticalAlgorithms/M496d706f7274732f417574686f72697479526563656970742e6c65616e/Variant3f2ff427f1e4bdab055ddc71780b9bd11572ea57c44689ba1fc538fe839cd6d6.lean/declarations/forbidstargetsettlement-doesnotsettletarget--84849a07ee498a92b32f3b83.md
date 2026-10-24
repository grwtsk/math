# forbidsTargetSettlement_doesNotSettleTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b308bbd0-37ee-f773-5972-a713438992fb",
  "kind": "theorem",
  "lexical_name": "forbidsTargetSettlement_doesNotSettleTarget",
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
  "slug": "forbidstargetsettlement-doesnotsettletarget--84849a07ee498a92b32f3b83",
  "source": {
    "blob": "fde89984fe6af9591ebfe728b6d2b50ca24e06b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M496d706f7274732f417574686f72697479526563656970742e6c65616e/Variant3f2ff427f1e4bdab055ddc71780b9bd11572ea57c44689ba1fc538fe839cd6d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84849a07ee498a92b32f3b83ad3854090dc1f7a122c0835d9eef80b2af15c5db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M496d706f7274732f417574686f72697479526563656970742e6c65616e/Variant3f2ff427f1e4bdab055ddc71780b9bd11572ea57c44689ba1fc538fe839cd6d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b308bbd0-37ee-f773-5972-a713438992fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forbidsTargetSettlement_doesNotSettleTarget
    (receipt : AuthorityReceipt) :
    receipt.forbidsTargetSettlement = true ->
      receipt.doesNotSettleTarget := by
  intro h
  exact h

end AuthorityReceipt

end Think.Imports
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M496d706f7274732f417574686f72697479526563656970742e6c65616e/Variant3f2ff427f1e4bdab055ddc71780b9bd11572ea57c44689ba1fc538fe839cd6d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M496d706f7274732f417574686f72697479526563656970742e6c65616e/Variant3f2ff427f1e4bdab055ddc71780b9bd11572ea57c44689ba1fc538fe839cd6d6.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde89984fe6af9591ebfe728b6d2b50ca24e06b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
