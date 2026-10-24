# HasSplitCoequalizer.isSplitCoequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9b04c21a117fd56fd43141179b8e2b1b4898f9185b668ffe4d7df92a4cb1355",
  "kind": "def",
  "lexical_name": "HasSplitCoequalizer.isSplitCoequalizer",
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
  "slug": "hassplitcoequalizer-issplitcoequalizer--2b4b3af2562219b6fba083d8",
  "source": {
    "blob": "a3a445275f01a4a5f54ccc127627c84b3896bec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b4b3af2562219b6fba083d8cb9a9c345d283823bec015df29e435099589da93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9b04c21a117fd56fd43141179b8e2b1b4898f9185b668ffe4d7df92a4cb1355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def HasSplitCoequalizer.isSplitCoequalizer [HasSplitCoequalizer f g] :
    IsSplitCoequalizer f g (HasSplitCoequalizer.coequalizerπ f g) :=
  Classical.choice (splittable (f := f) (g := g)).choose_spec.choose_spec

/-- If `f, g` is split, then `G f, G g` is split. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a445275f01a4a5f54ccc127627c84b3896bec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
