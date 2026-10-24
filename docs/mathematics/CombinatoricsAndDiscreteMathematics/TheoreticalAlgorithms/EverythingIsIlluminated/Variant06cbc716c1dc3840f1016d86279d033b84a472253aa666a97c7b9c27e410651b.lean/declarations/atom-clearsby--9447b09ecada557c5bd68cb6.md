# Atom.clearsBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62c6cb563e8802098fddce72b102bc386e58f1a0eebdd2ddcc256233525d89ff",
  "kind": "def",
  "lexical_name": "Atom.clearsBy",
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
  "slug": "atom-clearsby--9447b09ecada557c5bd68cb6",
  "source": {
    "blob": "de93d6399cd1630fafff743d6149a8715e202134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant06cbc716c1dc3840f1016d86279d033b84a472253aa666a97c7b9c27e410651b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9447b09ecada557c5bd68cb6a9e39667983c452255f93f7b43d1a1ce159e3ffa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant06cbc716c1dc3840f1016d86279d033b84a472253aa666a97c7b9c27e410651b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62c6cb563e8802098fddce72b102bc386e58f1a0eebdd2ddcc256233525d89ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.clearsBy : Atom -> String
  | .translationSurfaceObject =>
      "Lean translation-surface structure with singularities and charts"
  | .torusCoverPredicate =>
      "definition of torus cover compatible with the paper source"
  | .blockingPropertyPredicate =>
      "definition of finite blocking for pairs of points"
  | .boundedBlockingPredicate =>
      "definition of a uniform bound on blocking cardinality"
  | .openPairSetPredicate =>
      "topological pair-space object and openness predicate"
  | .finiteBlockingOnOpenSetPredicate =>
      "predicate connecting an open pair set to finite blocking"
  | .torusCoverToBlocking =>
      "kernel-checked proof or certified import of the directed theorem"
  | .blockingToOpenSet =>
      "kernel-checked proof or certified import of the directed theorem"
  | .openSetToBoundedBlocking =>
      "kernel-checked proof or certified import of the directed theorem"
  | .boundedBlockingToTorusCover =>
      "kernel-checked proof or certified import of the directed theorem"
  | .theoremOneEquivalence =>
      "all directed implications plus all prerequisite definitions"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant06cbc716c1dc3840f1016d86279d033b84a472253aa666a97c7b9c27e410651b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant06cbc716c1dc3840f1016d86279d033b84a472253aa666a97c7b9c27e410651b.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de93d6399cd1630fafff743d6149a8715e202134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
