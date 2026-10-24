# IsThickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a3ac3bd57d7501ccca88dc88f8cc857aafd5f83109951ed25d6db56e6008061",
  "kind": "def",
  "lexical_name": "IsThickening",
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
  "slug": "isthickening--068fde0c4fbd905ee761d3c3",
  "source": {
    "blob": "79a198cf7a93dbffb6fd6dfb034cd5380c0f86cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:068fde0c4fbd905ee761d3c3d52e3fa53fdc518b61ae88a004fd5010f92a9861",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a3ac3bd57d7501ccca88dc88f8cc857aafd5f83109951ed25d6db56e6008061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsThickening (c u : Set X) :=
  ∃ (x : X) (uc s : SetRel X X),
    IsOpen uc ∧ uc ∈ 𝓤 X ∧ c = closure (ball x uc) ∧
    ball x (s ○ uc ○ s) ⊆ u ∧ s ∈ 𝓤 X

/-- Given a pair consisting of a closed set `c` contained in an open set `u`
satisfying the predicate `IsThickening`, it is always possible to refine it to two pairs
`c ⊆ v` and `closure v ⊆ u` satisfying `IsThickening`. We can then use the general `Urysohns.CU`
construction to obtain the desired real-valued function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variantf65c9db0999a6a7bc12bd6dbbacf30bc33cbfb417ba698e73c61c9a7a4b61782.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a198cf7a93dbffb6fd6dfb034cd5380c0f86cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
