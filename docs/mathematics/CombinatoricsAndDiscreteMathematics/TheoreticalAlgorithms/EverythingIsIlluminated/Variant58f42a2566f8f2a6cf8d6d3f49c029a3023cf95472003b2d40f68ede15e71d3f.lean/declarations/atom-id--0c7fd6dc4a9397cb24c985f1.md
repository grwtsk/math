# Atom.id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd9430ef9804d67fed25e83ba4969edcf86cb6021f070dcbf97b9a96304cb7ef",
  "kind": "def",
  "lexical_name": "Atom.id",
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
  "slug": "atom-id--0c7fd6dc4a9397cb24c985f1",
  "source": {
    "blob": "e55f22291df2a915ffec8f2cfaf38c2646fb7eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c7fd6dc4a9397cb24c985f17beeffb010fd0ee274d8a327fcbdb66825cc2388",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd9430ef9804d67fed25e83ba4969edcf86cb6021f070dcbf97b9a96304cb7ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.id : Atom -> String
  | .translationSurfaceObject => "translation_surface_object"
  | .torusCoverPredicate => "torus_cover_predicate"
  | .blockingPropertyPredicate => "blocking_property_predicate"
  | .boundedBlockingPredicate => "bounded_blocking_predicate"
  | .openPairSetPredicate => "open_pair_set_predicate"
  | .finiteBlockingOnOpenSetPredicate => "finite_blocking_on_open_set_predicate"
  | .torusCoverToBlocking => "torus_cover_to_blocking"
  | .blockingToOpenSet => "blocking_to_open_set"
  | .openSetToBoundedBlocking => "open_set_to_bounded_blocking"
  | .boundedBlockingToTorusCover => "bounded_blocking_to_torus_cover"
  | .theoremOneEquivalence => "theorem_one_equivalence"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55f22291df2a915ffec8f2cfaf38c2646fb7eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
