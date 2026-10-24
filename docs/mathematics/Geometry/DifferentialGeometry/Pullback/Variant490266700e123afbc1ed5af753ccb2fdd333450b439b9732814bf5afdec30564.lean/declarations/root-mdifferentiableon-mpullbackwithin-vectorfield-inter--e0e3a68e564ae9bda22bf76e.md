# _root_.MDifferentiableOn.mpullbackWithin_vectorField_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecc8517501fbd02b2d7581b7ef1cf9a3e4840726",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f1580f8-3a4e-a32c-54d8-bf5813493189",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c9f3e7b-0afd-3e4a-8637-f1e48a1cfd7e",
  "kind": "lemma",
  "lexical_name": "_root_.MDifferentiableOn.mpullbackWithin_vectorField_inter",
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
  "slug": "root-mdifferentiableon-mpullbackwithin-vectorfield-inter--e0e3a68e564ae9bda22bf76e",
  "source": {
    "blob": "ecc8517501fbd02b2d7581b7ef1cf9a3e4840726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 305,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0e3a68e564ae9bda22bf76e4db8091320e1d9525e0b34fd8d6217c60fcbbb4b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9f3e7b-0afd-3e4a-8637-f1e48a1cfd7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.MDifferentiableOn.mpullbackWithin_vectorField_inter
    (hV : MDifferentiableOn I' I'.tangent (fun (y : M') ↦ (V y : TangentBundle I' M')) t)
    (hf : ContMDiffOn I I' n f s) (hf' : ∀ x ∈ s ∩ f ⁻¹' t, (mfderivWithin I I' f s x).IsInvertible)
    (hs : UniqueMDiffOn I s) (hmn : 2 ≤ n) :
    MDifferentiableOn I I.tangent
      (fun (y : M) ↦ (mpullbackWithin I I' f V s y : TangentBundle I M)) (s ∩ f ⁻¹' t) :=
  fun _ hx₀ ↦ MDifferentiableWithinAt.mpullbackWithin_vectorField_inter
    (hV _ hx₀.2) (hf _ hx₀.1) (hf' _ hx₀) hx₀.1 hs hmn

/-- The pullback of a differentiable vector field by a `C^n` function with `2 ≤ n` is
differentiable. Version within a set at a point, but with full pullback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecc8517501fbd02b2d7581b7ef1cf9a3e4840726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
