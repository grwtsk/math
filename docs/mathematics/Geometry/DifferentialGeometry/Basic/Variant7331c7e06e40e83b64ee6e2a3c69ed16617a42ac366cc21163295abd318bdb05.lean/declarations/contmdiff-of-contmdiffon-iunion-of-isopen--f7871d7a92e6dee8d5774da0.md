# contMDiff_of_contMDiffOn_iUnion_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc1034be-7c95-3f78-7ed5-916a388f073a",
  "kind": "lemma",
  "lexical_name": "contMDiff_of_contMDiffOn_iUnion_of_isOpen",
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
  "slug": "contmdiff-of-contmdiffon-iunion-of-isopen--f7871d7a92e6dee8d5774da0",
  "source": {
    "blob": "4d602545af9c564c34abd31ced9fd416ae58cb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 358,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7871d7a92e6dee8d5774da052c5b77341b75680764cf4186417dcef03f2f39e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc1034be-7c95-3f78-7ed5-916a388f073a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiff_of_contMDiffOn_iUnion_of_isOpen {ι : Type*} {s : ι → Set M}
    (hf : ∀ i : ι, ContMDiffOn I I' n f (s i)) (hs : ∀ i, IsOpen (s i)) (hs' : ⋃ i, s i = univ) :
    ContMDiff I I' n f := by
  rw [← contMDiffOn_univ, ← hs']
  exact ContMDiffOn.iUnion_of_isOpen hf hs

end contMDiff_union


/-! ### The inclusion map from one open set to another is `C^n` -/

section Inclusion

open TopologicalSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d602545af9c564c34abd31ced9fd416ae58cb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
