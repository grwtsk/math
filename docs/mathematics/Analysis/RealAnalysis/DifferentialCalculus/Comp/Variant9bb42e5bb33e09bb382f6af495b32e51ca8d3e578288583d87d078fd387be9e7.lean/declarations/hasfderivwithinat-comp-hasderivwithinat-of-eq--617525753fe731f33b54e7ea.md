# HasFDerivWithinAt.comp_hasDerivWithinAt_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d86c77df31af70da2203206d20403f2df697379e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bb42e5bb33e09bb382f6af495b32e51ca8d3e578288583d87d078fd387be9e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a5cec34-8892-675e-820c-52d2222738b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1f4466e-f080-fd83-64d8-0b4cc7b2a0d2",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.comp_hasDerivWithinAt_of_eq",
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
  "slug": "hasfderivwithinat-comp-hasderivwithinat-of-eq--617525753fe731f33b54e7ea",
  "source": {
    "blob": "d86c77df31af70da2203206d20403f2df697379e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 360,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant9bb42e5bb33e09bb382f6af495b32e51ca8d3e578288583d87d078fd387be9e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:617525753fe731f33b54e7ea442c29ade75a5616dfcc38e3682affdee727ff1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant9bb42e5bb33e09bb382f6af495b32e51ca8d3e578288583d87d078fd387be9e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f4466e-f080-fd83-64d8-0b4cc7b2a0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.comp_hasDerivWithinAt_of_eq {t : Set F}
    (hl : HasFDerivWithinAt l l' t y)
    (hf : HasDerivWithinAt f f' s x) (hst : MapsTo f s t) (hy : y = f x) :
    HasDerivWithinAt (l ∘ f) (l' f') s x := by
  rw [hy] at hl; exact hl.comp_hasDerivWithinAt x hf hst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant9bb42e5bb33e09bb382f6af495b32e51ca8d3e578288583d87d078fd387be9e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant9bb42e5bb33e09bb382f6af495b32e51ca8d3e578288583d87d078fd387be9e7.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86c77df31af70da2203206d20403f2df697379e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
