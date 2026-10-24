# torsion_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a41b95c1980e08206bddbb78df63279869fcbcdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d863de5-5c45-c6b0-a453-9712fe6c9641",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c1b70a2-edc2-3dbc-9d33-a0d123ef75b4",
  "kind": "lemma",
  "lexical_name": "torsion_antisymm",
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
  "slug": "torsion-antisymm--b2aa5f7d1d1735b0fea5304d",
  "source": {
    "blob": "a41b95c1980e08206bddbb78df63279869fcbcdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2aa5f7d1d1735b0fea5304d746605275dd3d6c35727fe66f89000a3c040409e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1b70a2-edc2-3dbc-9d33-a0d123ef75b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma torsion_antisymm (hcov : IsCovariantDerivativeOn E cov univ) (X₀ Y₀ : TangentSpace I x) :
    hcov.torsion x X₀ Y₀ = - hcov.torsion x Y₀ X₀ := by
  simp only [torsion_apply_eq_extend, neg_sub]
  rw [VectorField.mlieBracket_swap]
  dsimp
  module

end IsCovariantDerivativeOn

/-! ## Torsion tensor of a bundled covariant derivative on `TM` -/
namespace CovariantDerivative

open VectorField

variable [CompleteSpace 𝕜] [CompleteSpace E] [FiniteDimensional 𝕜 E] [IsManifold I 2 M]
  (cov : CovariantDerivative I E (TangentSpace I : M → Type _))
  {X Y : Π x : M, TangentSpace I x}

/-- The torsion tensor of a covariant derivative on the tangent bundle of a manifold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a41b95c1980e08206bddbb78df63279869fcbcdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
