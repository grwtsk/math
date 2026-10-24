# torsion_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b323fbb-77cd-6e25-f24a-d818f7d420f6",
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
  "slug": "torsion-antisymm--b08c476f135af0ea9a0a76e6",
  "source": {
    "blob": "4cc833a78f38a9abc2e3899d27866eb55054909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b08c476f135af0ea9a0a76e63ece416c13630c066d95dd924788a025fef07396",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b323fbb-77cd-6e25-f24a-d818f7d420f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cc833a78f38a9abc2e3899d27866eb55054909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
