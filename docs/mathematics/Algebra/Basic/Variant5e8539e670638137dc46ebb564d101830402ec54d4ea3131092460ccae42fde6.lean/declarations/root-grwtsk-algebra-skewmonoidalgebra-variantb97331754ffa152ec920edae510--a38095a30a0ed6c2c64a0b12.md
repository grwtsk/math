# _root_.GRWTSK.Algebra.SkewMonoidAlgebra.Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.IsSMulRegular.skewMonoidAlgebra_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca76993e-da3d-6b72-ede3-947eb1393b91",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.SkewMonoidAlgebra.Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.IsSMulRegular.skewMonoidAlgebra_iff",
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
  "slug": "root-grwtsk-algebra-skewmonoidalgebra-variantb97331754ffa152ec920edae510--a38095a30a0ed6c2c64a0b12",
  "source": {
    "blob": "0c8b4f0a1c6b1bb0ab1f99fe2004946cbde535a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 282,
    "path": "GRWTSK/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a38095a30a0ed6c2c64a0b12ecf21c5955cf7cc812e090e59385d21df4d78ac9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca76993e-da3d-6b72-ede3-947eb1393b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.SkewMonoidAlgebra.Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.IsSMulRegular.skewMonoidAlgebra_iff {S : Type*} [Monoid S] [DistribMulAction S k]
    {a : S} [Nonempty G] : IsSMulRegular k a ↔ IsSMulRegular (SkewMonoidAlgebra k G) a := by
  inhabit G
  refine ⟨IsSMulRegular.skewMonoidAlgebra, fun ha b₁ b₂ inj ↦ ?_⟩
  rw [← (single_injective _).eq_iff, ← smul_single, ← smul_single] at inj
  exact single_injective (default) (ha inj)

end Single

section One

variable [One G] [One k]

/-- The unit of the multiplication is `single 1 1`, i.e. the function that is `1` at `1` and
  zero elsewhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8b4f0a1c6b1bb0ab1f99fe2004946cbde535a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
