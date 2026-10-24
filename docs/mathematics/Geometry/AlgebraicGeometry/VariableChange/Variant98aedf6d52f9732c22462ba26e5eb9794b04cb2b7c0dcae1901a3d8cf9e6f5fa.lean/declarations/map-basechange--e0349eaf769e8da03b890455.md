# map_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:158d4eee-fbd8-821b-dde1-52b5bef8e94f",
  "kind": "lemma",
  "lexical_name": "map_baseChange",
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
  "slug": "map-basechange--e0349eaf769e8da03b890455",
  "source": {
    "blob": "966a35b23963e2357f57e1630d1593901ce200ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 298,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0349eaf769e8da03b89045570c49d7eea564e92a19cc94eb2644d23676a3b8d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:158d4eee-fbd8-821b-dde1-52b5bef8e94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_baseChange {S : Type s} [CommRing S] [Algebra R S] {A : Type v} [CommRing A] [Algebra R A]
    [Algebra S A] [IsScalarTower R S A] {B : Type w} [CommRing B] [Algebra R B] [Algebra S B]
    [IsScalarTower R S B] (ψ : A →ₐ[S] B) : (C.baseChange A).map ψ = C.baseChange B :=
  congr_arg C.map <| ψ.comp_algebraMap_of_tower R

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966a35b23963e2357f57e1630d1593901ce200ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
