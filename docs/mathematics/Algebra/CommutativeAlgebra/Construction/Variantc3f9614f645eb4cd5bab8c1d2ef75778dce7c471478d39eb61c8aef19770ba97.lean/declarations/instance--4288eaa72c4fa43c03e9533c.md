# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a3b3da7bdf6ee6b3fc7ad26c93be79297ca0198d5d507569a4d0898c1811f22",
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
  "slug": "instance--4288eaa72c4fa43c03e9533c",
  "source": {
    "blob": "813fa6d7de756ace5d965370c69d47a69cc03dc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 271,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4288eaa72c4fa43c03e9533c7630532a87493593f39e2990fecb973ec5fe5047",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a3b3da7bdf6ee6b3fc7ad26c93be79297ca0198d5d507569a4d0898c1811f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Field (SplittingField f) :=
  let e := algEquivSplittingFieldAux f
  { toCommRing := SplittingField.commRing f
    ratCast := fun a => algebraMap K _ (a : K)
    inv := fun a => e.symm (e a)⁻¹
    qsmul := (· • ·)
    qsmul_eq_mul' := fun a x =>
      Quotient.inductionOn x (fun p => congr_arg Quotient.mk''
        (by ext; simp [MvPolynomial.algebraMap_eq, Rat.smul_def]))
    ratCast_mk := fun a b h1 h2 => by
      apply_fun e
      change e (algebraMap K _ _) = _
      simp only [map_ratCast, map_natCast, map_mul, map_intCast, AlgEquiv.commutes,
        AlgEquiv.apply_symm_apply]
      apply Field.ratCast_mk
    exists_pair_ne := ⟨e.symm 0, e.symm 1, fun w => zero_ne_one ((e.symm).injective w)⟩
    mul_inv_cancel := fun a w => by
      -- This could surely be golfed.
      apply_fun e
      have : e a ≠ 0 := fun w' => by
        apply w
        simp at w'
        exact w'
      simp only [map_mul, AlgEquiv.apply_symm_apply, ne_eq, AddEquivClass.map_eq_zero_iff, map_one]
      rw [mul_inv_cancel]
      assumption
    inv_zero := by simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813fa6d7de756ace5d965370c69d47a69cc03dc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
