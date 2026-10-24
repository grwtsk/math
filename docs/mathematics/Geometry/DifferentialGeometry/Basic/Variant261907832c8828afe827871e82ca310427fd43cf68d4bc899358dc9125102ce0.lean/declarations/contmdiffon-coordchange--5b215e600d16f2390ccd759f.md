# ContMDiffOn.coordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38cae4e66dd7e1a50557c64284780343e53644ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01e1d84c-7b8f-854a-7241-0a8a09c3de05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf58b746-4504-be1c-71ee-efd2fab9ea6a",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.coordChange",
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
  "slug": "contmdiffon-coordchange--5b215e600d16f2390ccd759f",
  "source": {
    "blob": "38cae4e66dd7e1a50557c64284780343e53644ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 398,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b215e600d16f2390ccd759f466279d070acab915de9f809d900640ea16de40c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf58b746-4504-be1c-71ee-efd2fab9ea6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContMDiffOn.coordChange {f : M → B} {g : M → F} (hf : ContMDiffOn IM IB n f s)
    (hg : ContMDiffOn IM 𝓘(𝕜, F) n g s) (he : MapsTo f s e.baseSet) (he' : MapsTo f s e'.baseSet) :
    ContMDiffOn IM 𝓘(𝕜, F) n (fun y ↦ e.coordChange e' (f y) (g y)) s := fun x hx ↦
  (hf x hx).coordChange (hg x hx) (he hx) (he' hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38cae4e66dd7e1a50557c64284780343e53644ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
