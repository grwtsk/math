# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e29d4f07f765def2808f05f6ee8a8b5fa6c537e9672a51227a2576024215105",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f4efeaa94dd4544ebf4e91e5",
  "source": {
    "blob": "bacee02488339c0b2e6fbaba42993f148f5930f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLaws/Variant0f009cb60908b9d4cfde5a6566dce426bb1382363d0c104b2d116405fa0b9d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4efeaa94dd4544ebf4e91e5a7b1d5d279954655f3e6699723726808af459dea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLaws/Variant0f009cb60908b9d4cfde5a6566dce426bb1382363d0c104b2d116405fa0b9d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e29d4f07f765def2808f05f6ee8a8b5fa6c537e9672a51227a2576024215105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (σs) (P Q : SPred σs) [HasFrame P Q ψ] : HasFrame (σs:=σs) spred(⌜φ⌝ ∧ P) Q (φ ∧ ψ) where
  reassoc := and_comm.trans
             <| (and_congr_l HasFrame.reassoc).trans
             <| and_right_comm.trans
             <| and_assoc.trans
             <| and_congr_r pure_and
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLaws/Variant0f009cb60908b9d4cfde5a6566dce426bb1382363d0c104b2d116405fa0b9d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedLaws/Variant0f009cb60908b9d4cfde5a6566dce426bb1382363d0c104b2d116405fa0b9d12.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacee02488339c0b2e6fbaba42993f148f5930f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
