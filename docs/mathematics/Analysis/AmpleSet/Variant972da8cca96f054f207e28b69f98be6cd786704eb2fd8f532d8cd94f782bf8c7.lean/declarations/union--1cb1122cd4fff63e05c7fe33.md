# union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401335acc20513c7b7978d5906ce04219756037c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7cc025e-e8ff-c187-3644-ffaa9fbb9fff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2573d05-460d-c91c-bf24-94ecc9ff0dd2",
  "kind": "theorem",
  "lexical_name": "union",
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
  "slug": "union--1cb1122cd4fff63e05c7fe33",
  "source": {
    "blob": "401335acc20513c7b7978d5906ce04219756037c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cb1122cd4fff63e05c7fe33fba0ec8271814e6eaa9794c2a500ed8910b20a0d",
  "verification": {
    "reference": "docs/verification/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2573d05-460d-c91c-bf24-94ecc9ff0dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union {s t : Set F} (hs : AmpleSet s) (ht : AmpleSet t) : AmpleSet (s ∪ t) := by
  intro x hx
  rcases hx with (h | h) <;>
  -- The connected component of `x ∈ s` in `s ∪ t` contains the connected component of `x` in `s`,
  -- hence is also full; similarly for `t`.
  [have hx := hs x h; have hx := ht x h] <;>
  rw [← Set.univ_subset_iff, ← hx] <;>
  apply convexHull_mono <;>
  apply connectedComponentIn_mono <;>
  [apply subset_union_left; apply subset_union_right]

variable {E : Type*} [AddCommGroup E] [Module ℝ E] [TopologicalSpace E]

/-- Images of ample sets under continuous affine equivalences are ample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401335acc20513c7b7978d5906ce04219756037c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
