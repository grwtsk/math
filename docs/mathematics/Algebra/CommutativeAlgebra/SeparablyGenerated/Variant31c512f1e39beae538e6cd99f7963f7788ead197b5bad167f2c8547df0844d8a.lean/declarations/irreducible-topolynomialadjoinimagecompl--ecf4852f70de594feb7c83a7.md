# irreducible_toPolynomialAdjoinImageCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:854cb6fd-0f49-fe19-24ca-38ee02e2880e",
  "kind": "theorem",
  "lexical_name": "irreducible_toPolynomialAdjoinImageCompl",
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
  "slug": "irreducible-topolynomialadjoinimagecompl--ecf4852f70de594feb7c83a7",
  "source": {
    "blob": "6929c70a9a539c04177ddfd14817da438dde16c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 74,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecf4852f70de594feb7c83a777833c5c7fa0093537243076432595c1776cef1a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:854cb6fd-0f49-fe19-24ca-38ee02e2880e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_toPolynomialAdjoinImageCompl {F : MvPolynomial ι k} (hF : Irreducible F) (i : ι)
    (H : AlgebraicIndependent k fun x : {j | j ≠ i} ↦ a x) :
    Irreducible (toPolynomialAdjoinImageCompl F a i) := by
  classical
  unfold toPolynomialAdjoinImageCompl
  have hc : a '' {i}ᶜ = Set.range (fun x : {j | j ≠ i} ↦ a x) := by ext; simp
  let d : {j // j ≠ i} ≃ {j | j ≠ i} := .subtypeEquivRight (by simp)
  refine (congrArg Irreducible ?_).mp <|
    hF.map (renameEquiv k ((Equiv.optionSubtypeNe i).symm)) |>.map
      (optionEquivLeft k _) |>.map (Polynomial.mapAlgEquiv <|
        (renameEquiv k d).trans <| H.aevalEquiv.trans
        (Subalgebra.equivOfEq _ _ congr(Algebra.adjoin k $hc.symm)))
  rw [Polynomial.coe_mapAlgEquiv, Polynomial.coe_mapAlgHom]
  refine congrFun (congrArg Polynomial.map ?_) _
  ext <;> simp [d]

-- Suppose `F` has minimal total degree among the relations of `a`.
variable {F : MvPolynomial ι k}
variable (HF : ∀ F' : MvPolynomial ι k, F' ≠ 0 → F'.aeval a = 0 → F.totalDegree ≤ F'.totalDegree)

include HF

/-- If `F` has minimal total degree among the relations of `a`, then `F` is irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6929c70a9a539c04177ddfd14817da438dde16c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
