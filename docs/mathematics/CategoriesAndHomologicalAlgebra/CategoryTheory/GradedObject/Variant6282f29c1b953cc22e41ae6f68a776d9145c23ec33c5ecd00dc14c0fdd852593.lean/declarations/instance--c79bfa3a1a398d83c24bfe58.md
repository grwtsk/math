# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c77f64b3b916e3af1834ac423b7fdd47fe3478de874f1cb371eacbb3aba1adc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c79bfa3a1a398d83c24bfe58",
  "source": {
    "blob": "e8e53688edfa74e4290e6bcc08158e91ff5f4a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6282f29c1b953cc22e41ae6f68a776d9145c23ec33c5ecd00dc14c0fdd852593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c79bfa3a1a398d83c24bfe589316b8956573ea35fbff69d4f9e232e7f46c7948",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6282f29c1b953cc22e41ae6f68a776d9145c23ec33c5ecd00dc14c0fdd852593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c77f64b3b916e3af1834ac423b7fdd47fe3478de874f1cb371eacbb3aba1adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (total β C).Faithful where
  map_injective {X Y} f g w := by
    ext i
    replace w := Sigma.ι (fun i : β => X i) i ≫= w
    erw [colimit.ι_map, colimit.ι_map] at w
    simp? at * says simp only [Discrete.functor_obj_eq_as, Discrete.natTrans_app] at *
    exact Mono.right_cancellation _ _ w

end GradedObject

namespace GradedObject

noncomputable section

variable (β : Type)
variable (C : Type (u + 1)) [LargeCategory C] [HasForget C] [HasCoproducts.{0} C]
  [HasZeroMorphisms C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6282f29c1b953cc22e41ae6f68a776d9145c23ec33c5ecd00dc14c0fdd852593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6282f29c1b953cc22e41ae6f68a776d9145c23ec33c5ecd00dc14c0fdd852593.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e53688edfa74e4290e6bcc08158e91ff5f4a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
