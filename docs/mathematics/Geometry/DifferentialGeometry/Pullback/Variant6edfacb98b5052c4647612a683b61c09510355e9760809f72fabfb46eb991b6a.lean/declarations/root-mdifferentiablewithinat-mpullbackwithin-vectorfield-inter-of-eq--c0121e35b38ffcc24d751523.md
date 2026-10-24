# _root_.MDifferentiableWithinAt.mpullbackWithin_vectorField_inter_of_eq

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
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b71aad2-5e2b-f7e7-904f-bf62b37952e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ff94042-57fc-6b43-630c-a58840309765",
  "kind": "lemma",
  "lexical_name": "_root_.MDifferentiableWithinAt.mpullbackWithin_vectorField_inter_of_eq",
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
  "slug": "root-mdifferentiablewithinat-mpullbackwithin-vectorfield-inter-of-eq--c0121e35b38ffcc24d751523",
  "source": {
    "blob": "3e952657d3859ac86150a1d21a443b77923f2d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 322,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0121e35b38ffcc24d75152343f21b6599323ee4b0b9c9833aab161eaef5a579",
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

Occurrence: `result:2ff94042-57fc-6b43-630c-a58840309765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.MDifferentiableWithinAt.mpullbackWithin_vectorField_inter_of_eq
    (hV : MDiffAt[t] (T% V) y₀) (hf : CMDiffAt[s] n f x₀)
    (hf' : (mfderiv[s] f x₀).IsInvertible)
    (hx₀ : x₀ ∈ s) (hs : UniqueMDiff[s]) (hmn : 2 ≤ n) (h : y₀ = f x₀) :
    MDiffAt[s ∩ f ⁻¹' t] (T% (mpullbackWithin I I' f V s)) x₀ := by
  subst h
  exact hV.mpullbackWithin_vectorField_inter hf hf' hx₀ hs hmn

/-- The pullback of a differentiable vector field by a `C^n` function with `2 ≤ n` is
differentiable. Version on a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e952657d3859ac86150a1d21a443b77923f2d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
