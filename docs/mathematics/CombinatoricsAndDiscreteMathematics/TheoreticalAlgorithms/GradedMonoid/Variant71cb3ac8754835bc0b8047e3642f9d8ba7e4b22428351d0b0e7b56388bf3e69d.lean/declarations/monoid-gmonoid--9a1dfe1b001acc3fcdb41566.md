# Monoid.gMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dc4ef4eccb81a827afe1536bd6350d17f452607799af31e37b0f32087cba71b",
  "kind": "instance",
  "lexical_name": "Monoid.gMonoid",
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
  "slug": "monoid-gmonoid--9a1dfe1b001acc3fcdb41566",
  "source": {
    "blob": "ea7a59740717ca52c48cfb2ca23b8bac6485b01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 452,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a1dfe1b001acc3fcdb41566df513927377a9783c5f0e5e5154e2ecba3b95837",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dc4ef4eccb81a827afe1536bd6350d17f452607799af31e37b0f32087cba71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Monoid.gMonoid [AddMonoid ι] [Monoid R] : GradedMonoid.GMonoid fun _ : ι => R :=
  -- { Mul.gMul ι, One.gOne ι with
  { One.gOne ι with
    mul := fun x y => x * y
    one_mul := fun _ => Sigma.ext (zero_add _) (heq_of_eq (one_mul _))
    mul_one := fun _ => Sigma.ext (add_zero _) (heq_of_eq (mul_one _))
    mul_assoc := fun _ _ _ => Sigma.ext (add_assoc _ _ _) (heq_of_eq (mul_assoc _ _ _))
    gnpow := fun n _ a => a ^ n
    gnpow_zero' := fun _ => Sigma.ext (zero_nsmul _) (heq_of_eq (Monoid.npow_zero _))
    gnpow_succ' := fun _ ⟨_, _⟩ => Sigma.ext (succ_nsmul _ _) (heq_of_eq (Monoid.npow_succ _ _)) }
#align monoid.gmonoid Monoid.gMonoid
#align monoid.gmonoid_gnpow Monoid.gMonoid_gnpow

/-- If all grades are the same type and themselves form a commutative monoid, then there is a
trivial grading structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant71cb3ac8754835bc0b8047e3642f9d8ba7e4b22428351d0b0e7b56388bf3e69d.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea7a59740717ca52c48cfb2ca23b8bac6485b01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
