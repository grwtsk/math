# smulCommClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb54ddfd6d0d1ca32819c41e7f78910be0369f5b073ae1d9094de71f2c45ac28",
  "kind": "instance",
  "lexical_name": "smulCommClass_right",
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
  "slug": "smulcommclass-right--dacd41038aacbf453f580138",
  "source": {
    "blob": "45a538bfe6dba9e0dcd792ecaad3f7974d476eab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dacd41038aacbf453f580138382f92c620348c6c265974bf2783993a61c0823c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb54ddfd6d0d1ca32819c41e7f78910be0369f5b073ae1d9094de71f2c45ac28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass_right [SMul α β] [MulAction G β] [SMulCommClass α G β] (S : Subgroup G) :
    SMulCommClass α S β :=
  S.toSubmonoid.smulCommClass_right

/-- Note that this provides `IsScalarTower S G G` which is needed by `smul_mul_assoc`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a538bfe6dba9e0dcd792ecaad3f7974d476eab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
