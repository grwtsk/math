# _root_.ContMDiffWithinAt.mpullbackWithin_vectorField_of_mem_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e952657d3859ac86150a1d21a443b77923f2d28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed70e097-007d-40f7-4e32-d2c6ded762e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59460d96-ad7a-2e14-c404-1dfd8ed85f01",
  "kind": "lemma",
  "lexical_name": "_root_.ContMDiffWithinAt.mpullbackWithin_vectorField_of_mem_of_eq",
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
  "slug": "root-contmdiffwithinat-mpullbackwithin-vectorfield-of-mem-of-eq--50092041a29a52bb27b0fa13",
  "source": {
    "blob": "3e952657d3859ac86150a1d21a443b77923f2d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 475,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50092041a29a52bb27b0fa13dcd88c320299c26b7f5f3793af83ad40857c9aa9",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59460d96-ad7a-2e14-c404-1dfd8ed85f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.ContMDiffWithinAt.mpullbackWithin_vectorField_of_mem_of_eq
    (hV : CMDiffAt[t] m (T% V) y₀) (hf : CMDiffAt[s] n f x₀) (hf' : (mfderiv[s] f x₀).IsInvertible)
    (hx₀ : x₀ ∈ s) (hs : UniqueMDiff[s]) (hmn : m + 1 ≤ n) (hst : f ⁻¹' t ∈ 𝓝[s] x₀)
    (hy₀ : f x₀ = y₀) :
    CMDiffAt[s] m (T% (mpullbackWithin I I' f V s)) x₀ := by
  subst hy₀
  exact ContMDiffWithinAt.mpullbackWithin_vectorField_of_mem hV hf hf' hx₀ hs hmn hst

/-- The pullback of a `C^m` vector field by a `C^n` function with invertible derivative and
with `m + 1 ≤ n` is `C^m`.
Version within a set at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e952657d3859ac86150a1d21a443b77923f2d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
