# isoAsLimitConeLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58f01f50dc46764f27a2800118ec8dab975f3a172fd29d3748cd41063ad47f6c",
  "kind": "def",
  "lexical_name": "isoAsLimitConeLift",
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
  "slug": "isoaslimitconelift--3a18b3c4d2ebbc011ced4739",
  "source": {
    "blob": "9a5eb48f859f2d5318501db2a1a4bc7cb38355bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a18b3c4d2ebbc011ced47391c2524a3dfb029d38ff950c62e0cda1ef168c0f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58f01f50dc46764f27a2800118ec8dab975f3a172fd29d3748cd41063ad47f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoAsLimitConeLift : X ≅ (limitCone X.diagram).pt :=
  asIso <| (limitConeIsLimit _).lift X.asLimitCone
set_option linter.uppercaseLean3 false in
#align Profinite.iso_as_limit_cone_lift Profinite.isoAsLimitConeLift

/-- The isomorphism of cones `X.asLimitCone` and `Profinite.limitCone X.diagram`.
The underlying isomorphism is defeq to `X.isoAsLimitConeLift`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a5eb48f859f2d5318501db2a1a4bc7cb38355bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
