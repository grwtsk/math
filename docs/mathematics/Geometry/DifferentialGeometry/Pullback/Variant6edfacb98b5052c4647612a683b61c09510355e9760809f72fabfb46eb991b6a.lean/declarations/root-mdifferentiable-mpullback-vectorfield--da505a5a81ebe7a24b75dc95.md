# _root_.MDifferentiable.mpullback_vectorField

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
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72854d56-432b-9b6f-70fc-f6ef4711c072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5cecefd-4e27-3f0d-589a-03d5ef0253ce",
  "kind": "lemma",
  "lexical_name": "_root_.MDifferentiable.mpullback_vectorField",
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
  "slug": "root-mdifferentiable-mpullback-vectorfield--da505a5a81ebe7a24b75dc95",
  "source": {
    "blob": "3e952657d3859ac86150a1d21a443b77923f2d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 378,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da505a5a81ebe7a24b75dc954646beb9d1a9a8ec7b116997d8a0df3652ea77dc",
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

Occurrence: `result:f5cecefd-4e27-3f0d-589a-03d5ef0253ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.MDifferentiable.mpullback_vectorField
    (hV : MDiff (T% V)) (hf : CMDiff n f) (hf' : ∀ x, (mfderiv% f x).IsInvertible) (hmn : 2 ≤ n) :
    MDiff (T% (mpullback I I' f V)) :=
  fun x ↦ MDifferentiableAt.mpullback_vectorField (hV (f x)) (hf x) (hf' x) hmn

end MDifferentiability


section ContMDiff

variable [CompleteSpace E] [IsManifold I 1 M] [IsManifold I' 1 M']

/-- The pullback of a `C^m` vector field by a `C^n` function with invertible derivative and
`m + 1 ≤ n` is `C^m`.
Version within a set at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e952657d3859ac86150a1d21a443b77923f2d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
