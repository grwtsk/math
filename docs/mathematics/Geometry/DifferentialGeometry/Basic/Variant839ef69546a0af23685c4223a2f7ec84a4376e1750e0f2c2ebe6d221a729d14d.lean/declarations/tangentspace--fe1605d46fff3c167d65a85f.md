# TangentSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dfac5871b02aa63a36fdcbd35e0e110bad862291f32b6a1ef679c0807c64337",
  "kind": "def",
  "lexical_name": "TangentSpace",
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
  "slug": "tangentspace--fe1605d46fff3c167d65a85f",
  "source": {
    "blob": "ee3c2d7d5a330683c58061f8093012ae5079e619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 901,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe1605d46fff3c167d65a85fe72f48b9811c844d6d9ec890b2f274fb1237bdbe",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dfac5871b02aa63a36fdcbd35e0e110bad862291f32b6a1ef679c0807c64337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 901–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TangentSpace {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E : Type u} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    {H : Type*} [TopologicalSpace H] (I : ModelWithCorners 𝕜 E H)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M] (_x : M) : Type u := E
-- The `TopologicalSpace, AddCommGroup, IsTopologicalAddGroup` instances should be constructed by a
-- deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

/- In general, the definition of `TangentSpace` is not reducible, so that type class inference
does not pick wrong instances. We record the right instances for them. -/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {H : Type*} [TopologicalSpace H] (I : ModelWithCorners 𝕜 E H)
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M] {x : M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean#L901).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3c2d7d5a330683c58061f8093012ae5079e619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
