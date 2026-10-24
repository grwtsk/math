# RestrictedAdelicCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84ffdcf5ffdd19da40c99d5c81c4da127d42cacd84247abe5484969d99659056",
  "kind": "structure",
  "lexical_name": "RestrictedAdelicCompletion",
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
  "slug": "restrictedadeliccompletion--b5df35e0975a0fcff166747e",
  "source": {
    "blob": "1cac0703d08d10fee7234f2d7c68643416bcf7ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5df35e0975a0fcff166747e2098a47703ff8c7c29a7838f7d9c7bab69b1f389",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84ffdcf5ffdd19da40c99d5c81c4da127d42cacd84247abe5484969d99659056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RestrictedAdelicCompletion
    {FiniteCarrier : Type u} [UniformSpace FiniteCarrier]
    (finiteState : FiniteAdelicState FiniteCarrier) where
  completion : AbstractCompletion.{v, u} FiniteCarrier
  completionCertificate : ObjectAddress

namespace RestrictedAdelicCompletion

variable
    {FiniteCarrier : Type u} [UniformSpace FiniteCarrier]
    {finiteState : FiniteAdelicState FiniteCarrier}

/-- The topology on a certified completion is the one stored in its package. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cac0703d08d10fee7234f2d7c68643416bcf7ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
