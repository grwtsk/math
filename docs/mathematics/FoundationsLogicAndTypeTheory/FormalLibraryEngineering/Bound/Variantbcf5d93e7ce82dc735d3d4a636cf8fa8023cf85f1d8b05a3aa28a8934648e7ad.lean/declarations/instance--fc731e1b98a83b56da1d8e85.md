# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0a7c901c020471f4331948a519ce7a586636c61f087823581bf9dc76ef15c0a",
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
  "slug": "instance--fc731e1b98a83b56da1d8e85",
  "source": {
    "blob": "d0c00c96f7f632f10073786428c9d6169c937067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc731e1b98a83b56da1d8e85ef85d559ec0eb2cfaa86c87f6229a8ace8b3202b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0a7c901c020471f4331948a519ce7a586636c61f087823581bf9dc76ef15c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommMonoid BoundCertificate where
  mul := compose
  one := unit
  mul_assoc c d e := by
    apply ext
    · funext A
      exact add_assoc _ _ _
    · exact add_assoc _ _ _
    · exact max_assoc _ _ _
  one_mul c := by
    apply ext
    · funext A
      exact zero_add _
    · exact zero_add _
    · exact max_eq_right c.radius_one_le
  mul_one c := by
    apply ext
    · funext A
      exact add_zero _
    · exact add_zero _
    · exact max_eq_left c.radius_one_le
  mul_comm c d := by
    apply ext
    · funext A
      exact add_comm _ _
    · exact add_comm _ _
    · exact max_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c00c96f7f632f10073786428c9d6169c937067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
