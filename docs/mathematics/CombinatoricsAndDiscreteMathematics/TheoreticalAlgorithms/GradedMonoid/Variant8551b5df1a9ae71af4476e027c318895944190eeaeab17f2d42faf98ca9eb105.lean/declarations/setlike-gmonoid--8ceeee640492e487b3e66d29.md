# SetLike.gMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b117e3db0303ba25fb64d607d3e89d2e7f62017fa777d6a8b77c3ea9988709f",
  "kind": "instance",
  "lexical_name": "SetLike.gMonoid",
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
  "slug": "setlike-gmonoid--8ceeee640492e487b3e66d29",
  "source": {
    "blob": "d6a6a531f464a5d7c9d0e0bebeec478d0d7dd556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 588,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ceeee640492e487b3e66d2961c56ee4467cf8e8f75ea4bc398e7c60a4d620cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b117e3db0303ba25fb64d607d3e89d2e7f62017fa777d6a8b77c3ea9988709f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SetLike.gMonoid {S : Type*} [SetLike S R] [Monoid R] [AddMonoid ι] (A : ι → S)
    [SetLike.GradedMonoid A] : GradedMonoid.GMonoid fun i => A i :=
  { SetLike.gOne A,
    SetLike.gMul A with
    one_mul := fun ⟨_, _, _⟩ => Sigma.subtype_ext (zero_add _) (one_mul _)
    mul_one := fun ⟨_, _, _⟩ => Sigma.subtype_ext (add_zero _) (mul_one _)
    mul_assoc := fun ⟨_, _, _⟩ ⟨_, _, _⟩ ⟨_, _, _⟩ =>
      Sigma.subtype_ext (add_assoc _ _ _) (mul_assoc _ _ _)
    gnpow := fun n _ a => ⟨(a:R)^n, SetLike.pow_mem_graded n a.prop⟩
    gnpow_zero' := fun _ => Sigma.subtype_ext (zero_nsmul _) (pow_zero _)
    gnpow_succ' := fun _ _ => Sigma.subtype_ext (succ_nsmul _ _) (pow_succ _ _) }
#align set_like.gmonoid SetLike.gMonoid

/-
Porting note: simpNF linter returns

"Left-hand side does not simplify, when using the simp lemma on itself."

However, simp does indeed solve the following. Possibly related std#71,std#78

example {S : Type*} [SetLike S R] [Monoid R] [AddMonoid ι] (A : ι → S)
    [SetLike.GradedMonoid A] {i : ι} (x : A i) (n : ℕ) :
    ↑(@GradedMonoid.GMonoid.gnpow _ (fun i => A i) _ _ n _ x) = (x:R)^n := by simp

-/
@[simp,nolint simpNF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a6a531f464a5d7c9d0e0bebeec478d0d7dd556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
