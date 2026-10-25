# AuthoritySpinSector.isTheoremAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc9b275fa8b2c0b510e7cbd4c12036e01059be08bbae987a37e94bfa823e47d7",
  "kind": "def",
  "lexical_name": "AuthoritySpinSector.isTheoremAuthority",
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
  "slug": "authorityspinsector-istheoremauthority--7b75c45d55f1f89a1d16aef7",
  "source": {
    "blob": "0ed45f914b2eea930bfac64edabfb3d0304b5095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variantf2d56132215737e76058af4a5055189b87697069bda4f33c6c3561b230804f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b75c45d55f1f89a1d16aef7b1a21c72db497038ebabb58e4415187b921537a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variantf2d56132215737e76058af4a5055189b87697069bda4f33c6c3561b230804f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc9b275fa8b2c0b510e7cbd4c12036e01059be08bbae987a37e94bfa823e47d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AuthoritySpinSector.isTheoremAuthority : AuthoritySpinSector → Bool
  | .proofPositive => true
  | _ => false

/-- A coarse sector is bounded finite witness authority exactly when bounded-positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variantf2d56132215737e76058af4a5055189b87697069bda4f33c6c3561b230804f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variantf2d56132215737e76058af4a5055189b87697069bda4f33c6c3561b230804f10.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed45f914b2eea930bfac64edabfb3d0304b5095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
