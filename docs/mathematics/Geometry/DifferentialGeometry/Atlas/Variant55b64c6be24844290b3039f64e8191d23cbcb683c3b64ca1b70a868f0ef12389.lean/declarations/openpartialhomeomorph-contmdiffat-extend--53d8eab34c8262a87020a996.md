# OpenPartialHomeomorph.contMDiffAt_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:718ac3d6-f9ba-d984-9b5c-28ca84762544",
  "kind": "theorem",
  "lexical_name": "OpenPartialHomeomorph.contMDiffAt_extend",
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
  "slug": "openpartialhomeomorph-contmdiffat-extend--53d8eab34c8262a87020a996",
  "source": {
    "blob": "ad9e9e2f37971c08ea58b43623753afceb4c3a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 101,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d8eab34c8262a87020a9968d327a45f5cf89fd0b60c6d19a79041167a7a50a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718ac3d6-f9ba-d984-9b5c-28ca84762544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OpenPartialHomeomorph.contMDiffAt_extend {x : M}
    (he : e ∈ maximalAtlas I n M) (hx : x ∈ e.source) :
    ContMDiffAt I 𝓘(𝕜, E) n (e.extend I) x :=
  (I.contMDiff _).comp x <| contMDiffAt_of_mem_maximalAtlas he hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9e9e2f37971c08ea58b43623753afceb4c3a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
