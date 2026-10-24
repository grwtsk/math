# productionSemanticKernel_entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e64e53e9-0d19-838d-3d89-5844a0a2a0d7",
  "kind": "theorem",
  "lexical_name": "productionSemanticKernel_entry",
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
  "slug": "productionsemantickernel-entry--8fd98c92a65b7e85d862c99a",
  "source": {
    "blob": "0d7848e116216056eaa0416d4e004a5478aa8cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 604,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fd98c92a65b7e85d862c99a1234afb7ffa58a22d8867dbffede6e592475b41f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e64e53e9-0d19-838d-3d89-5844a0a2a0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productionSemanticKernel_entry
    (left right : ActiveIndexBinding) :
    productionSemanticKernel left.rhetoricalIndex right.rhetoricalIndex =
      semanticMultiplicity left right := by
  rw [productionSemanticKernel_apply, productionIndexKernel_apply,
    productionRelationalSemanticKernel_entry]
  norm_cast

/-- Entrywise correspondence for the four sparse relation channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6b2b22dd8d7123cf53d7382961030d54b040657eccb0e09e1cf50a3d7a555fcd.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7848e116216056eaa0416d4e004a5478aa8cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
