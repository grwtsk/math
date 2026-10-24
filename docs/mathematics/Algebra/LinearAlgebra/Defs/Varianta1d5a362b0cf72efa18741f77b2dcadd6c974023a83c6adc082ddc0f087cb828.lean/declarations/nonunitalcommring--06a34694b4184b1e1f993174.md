# nonUnitalCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54b5d01915cb752f3b49a41247a61155ec531c5af919b615867fbb42a421f071",
  "kind": "instance",
  "lexical_name": "nonUnitalCommRing",
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
  "slug": "nonunitalcommring--06a34694b4184b1e1f993174",
  "source": {
    "blob": "9091fc0832b16c7bfe0cba5c76f1d624bbcc48ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1083,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06a34694b4184b1e1f993174f3bb5fae44e320498fbecc40e6f27b79084104d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54b5d01915cb752f3b49a41247a61155ec531c5af919b615867fbb42a421f071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1083–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonUnitalCommRing [CommRing k] [AddCommSemigroup G] :
    NonUnitalCommRing k[G] :=
  { AddMonoidAlgebra.nonUnitalCommSemiring, AddMonoidAlgebra.nonUnitalRing with }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean#L1083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9091fc0832b16c7bfe0cba5c76f1d624bbcc48ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
