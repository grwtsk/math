# CompatibleLocalSections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:466fefb2b4ab9a8a0727c4065cc48de6e381700833d2083912cca061522de0e2",
  "kind": "structure",
  "lexical_name": "CompatibleLocalSections",
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
  "slug": "compatiblelocalsections--5eecec8894604d103f8846a5",
  "source": {
    "blob": "94fcde0e3a09182f7563656d6271094f673a05a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eecec8894604d103f8846a56ca9a66334965b6aa477a0e0c3df49bb911656a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:466fefb2b4ab9a8a0727c4065cc48de6e381700833d2083912cca061522de0e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompatibleLocalSections
    {site : CertifiedSite}
    (presheaf : PresheafData site)
    {target : site.Object}
    (cover : CoverFamily site target) where
  sections : ∀ index, presheaf.Section (cover.member index)
  compatible :
    ∀ left right,
      presheaf.restrict
          (cover.overlap_le_left left right)
          (sections left) =
        presheaf.restrict
          (cover.overlap_le_right left right)
          (sections right)

/--
A finite sheaf is a presheaf with a supplied unique glue for every compatible
cover family.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fcde0e3a09182f7563656d6271094f673a05a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
