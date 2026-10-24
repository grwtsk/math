# chartBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b3ac1033c81686408a387fef5183dfb641525eea388b585546544d419e6b760",
  "kind": "def",
  "lexical_name": "chartBlocks",
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
  "slug": "chartblocks--7b473cff3be2c7425dadd4c8",
  "source": {
    "blob": "d1f3fc8e3ca0f6977b7741b44d31676ba3136097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant6bb08ad72d1ae2875ee2e45db06d39d7892e743ad8e74ce1b1ff5d29ec03c98f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b473cff3be2c7425dadd4c86862276cb1f9c3ffb2f982251308d4e075f851dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant6bb08ad72d1ae2875ee2e45db06d39d7892e743ad8e74ce1b1ff5d29ec03c98f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b3ac1033c81686408a387fef5183dfb641525eea388b585546544d419e6b760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chartBlocks {n : ℕ} (C : Fin n → Finset Scale) : Fin n → Finset SmallCoordinate :=
  fun i ↦ chartInventory (C i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant6bb08ad72d1ae2875ee2e45db06d39d7892e743ad8e74ce1b1ff5d29ec03c98f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant6bb08ad72d1ae2875ee2e45db06d39d7892e743ad8e74ce1b1ff5d29ec03c98f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f3fc8e3ca0f6977b7741b44d31676ba3136097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
