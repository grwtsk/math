# same_marked_slope_homeomorphism_fixed_on_exterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f019210e0bfe9a6abb6a1e89837e92e3a8d499a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42eebb90-0c0a-9faa-776e-26e26de7efa7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a778fb44-9446-6df8-7492-e4149695353d",
  "kind": "theorem",
  "lexical_name": "same_marked_slope_homeomorphism_fixed_on_exterior",
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
  "slug": "same-marked-slope-homeomorphism-fixed-on-exterior--1ea94bb0cf60c7d838c1cba2",
  "source": {
    "blob": "4f019210e0bfe9a6abb6a1e89837e92e3a8d499a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea94bb0cf60c7d838c1cba2a032978d97ce7e001d72e26c414f4c4668d0b0ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a778fb44-9446-6df8-7492-e4149695353d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_marked_slope_homeomorphism_fixed_on_exterior
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (left right : C.Gluing K r) :
    C.FixedOnExterior (C.same_marked_slope_homeomorphism left right) :=
  C.compare_fixed_on_exterior left right

/--
The meridional filling is oriented-homeomorphic to the supplier's `S^3`,
conditional on an original-neighbourhood presentation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f019210e0bfe9a6abb6a1e89837e92e3a8d499a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
