# mergeWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04bfbe2021f6a73810eb850bf43154b50bd0a5907fa22a773c4fb47e54f905ff",
  "kind": "def",
  "lexical_name": "mergeWith",
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
  "slug": "mergewith--20ae287f5c36024b0577da5e",
  "source": {
    "blob": "e4049eddf80a24b79791f2563e1518e08a6ff62f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 865,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9c427cc1bb86a84e705f0a7bfa8b20922858ce8f6beba9d18242b6a04bdacbc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20ae287f5c36024b0577da5e2237b108d732d2684f93cce09ea6b95ae556e335",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9c427cc1bb86a84e705f0a7bfa8b20922858ce8f6beba9d18242b6a04bdacbc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04bfbe2021f6a73810eb850bf43154b50bd0a5907fa22a773c4fb47e54f905ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 865–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeWith [TransCmp cmp] (mergeFn : α → β → β → β) (t₁ t₂ : ExtDTreeMap α β cmp) : ExtDTreeMap α β cmp :=
  t₁.liftOn₂ t₂ (fun m₁ m₂ => mk (DTreeMap.Const.mergeWith mergeFn m₁ m₂))
    (fun _ _ _ _ h₁ h₂ => sound (h₁.constMergeWith mergeFn h₂))

end Const

@[inline, inherit_doc DTreeMap.insertMany]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9c427cc1bb86a84e705f0a7bfa8b20922858ce8f6beba9d18242b6a04bdacbc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9c427cc1bb86a84e705f0a7bfa8b20922858ce8f6beba9d18242b6a04bdacbc2.lean#L865).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4049eddf80a24b79791f2563e1518e08a6ff62f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
