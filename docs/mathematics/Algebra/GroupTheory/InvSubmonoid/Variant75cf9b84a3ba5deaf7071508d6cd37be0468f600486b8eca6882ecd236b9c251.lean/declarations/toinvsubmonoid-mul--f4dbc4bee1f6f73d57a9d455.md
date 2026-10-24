# toInvSubmonoid_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb397d8f-4fce-611c-8246-868dcbe92ae4",
  "kind": "theorem",
  "lexical_name": "toInvSubmonoid_mul",
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
  "slug": "toinvsubmonoid-mul--f4dbc4bee1f6f73d57a9d455",
  "source": {
    "blob": "ec04c3081187c1b70acbeeec8e8309978cc671e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 72,
    "path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4dbc4bee1f6f73d57a9d455b10afcd3ac162a91609b5427f6af990867bbf2d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb397d8f-4fce-611c-8246-868dcbe92ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInvSubmonoid_mul (m : M) : (toInvSubmonoid M S m : S) * algebraMap R S m = 1 :=
  Submonoid.leftInvEquiv_symm_mul _ (submonoid_map_le_is_unit _ _) _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec04c3081187c1b70acbeeec8e8309978cc671e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
