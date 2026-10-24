# ContinuousFiniteGaloisModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62881ebb1d3927ef5ebeb2e73767c2787a919ae556931ea596fb3cc928015789",
  "kind": "structure",
  "lexical_name": "ContinuousFiniteGaloisModule",
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
  "slug": "continuousfinitegaloismodule--5b464211dd7ccc703b8230e0",
  "source": {
    "blob": "55ba8a123e74f141beb0e159c1827531ae5cc421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b464211dd7ccc703b8230e08707dcc9a8c7679439c75fc7f5f47a68244488e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62881ebb1d3927ef5ebeb2e73767c2787a919ae556931ea596fb3cc928015789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousFiniteGaloisModule
    (A : FiniteAddCommGroup.{u}) where
  G : ProfiniteGroupLike
  finiteQuotient : FiniteGroupData.{u}
  action : AdditiveAction finiteQuotient A
  quotientMapLabel : String
  actionContinuous : Prop
  actionContinuousCertified : actionContinuous
  factorsThroughFiniteQuotient : Prop
  factorsThroughFiniteQuotientCertified :
    factorsThroughFiniteQuotient
  boundary : List String

/--
Continuous degree-one cohomology for a finite discrete module that factors
through a finite quotient.

This is intentionally an abbreviation of the constructed finite `H1`; the
comparison theorem below records that no independent placeholder cohomology
object is introduced.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55ba8a123e74f141beb0e159c1827531ae5cc421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
