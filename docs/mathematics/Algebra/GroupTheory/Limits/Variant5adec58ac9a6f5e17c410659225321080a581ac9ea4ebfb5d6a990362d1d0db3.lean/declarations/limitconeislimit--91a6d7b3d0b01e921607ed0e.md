# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a455ba8d32dc85e355ff58c7a107eb5cfff58ef5a9dd7b68685fb7d2235fc76e",
  "kind": "def",
  "lexical_name": "limitConeIsLimit",
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
  "slug": "limitconeislimit--91a6d7b3d0b01e921607ed0e",
  "source": {
    "blob": "2ef51a45cd0b54e762e9159e66d825dd59f9b482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 220,
    "path": "GRWTSK/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91a6d7b3d0b01e921607ed0eae3dbff7628d87f9d689df16206b27ee090b7a9f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a455ba8d32dc85e355ff58c7a107eb5cfff58ef5a9dd7b68685fb7d2235fc76e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def limitConeIsLimit (F : J ⥤ CommMonCatMax.{u,v}) : IsLimit (limitCone F) :=
  liftedLimitIsLimit _
#align CommMon.limit_cone_is_limit CommMonCat.limitConeIsLimit
#align AddCommMon.limit_cone_is_limit AddCommMonCat.limitConeIsLimit

/-- The category of commutative monoids has all limits. -/
@[to_additive "The category of additive commutative monoids has all limits."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef51a45cd0b54e762e9159e66d825dd59f9b482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
