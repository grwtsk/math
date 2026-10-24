# rhetoricalVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7b36ff2124898ec913452964630d6554cf0145efe690430829a71f4115c07c7",
  "kind": "def",
  "lexical_name": "rhetoricalVector",
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
  "slug": "rhetoricalvector--31e2adc29dd265950025a2f2",
  "source": {
    "blob": "6796eaa9f7edb4fa819ed6d706f14b1b76aeb86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31e2adc29dd265950025a2f2d72cc224c5bce7769724d0ecd88c8ee4a7612ae5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7b36ff2124898ec913452964630d6554cf0145efe690430829a71f4115c07c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rhetoricalVector (index : Index) : RhetoricalSpace kernel :=
  completePreRhetorical kernel <|
    preRhetoricalMk kernel (Raw.basisVector kernel index)

/-- Linear map sending a raw finite combination first through the explicit
radical quotient and then into its completion.  The raw carrier has no
topology or semidefinite inner-product-space instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6796eaa9f7edb4fa819ed6d706f14b1b76aeb86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
