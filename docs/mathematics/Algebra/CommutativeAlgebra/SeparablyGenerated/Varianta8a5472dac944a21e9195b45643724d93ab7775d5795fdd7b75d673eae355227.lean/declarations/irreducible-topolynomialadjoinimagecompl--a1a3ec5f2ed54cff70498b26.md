# irreducible_toPolynomialAdjoinImageCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b43df4fcbf568c96076d936680befd256dcaef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67b25094-a159-a323-e96f-9d82828d0863",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a121035-062f-1d35-9ae0-41ad536b138b",
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
  "slug": "irreducible-topolynomialadjoinimagecompl--a1a3ec5f2ed54cff70498b26",
  "source": {
    "blob": "3b43df4fcbf568c96076d936680befd256dcaef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 66,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a3ec5f2ed54cff70498b266b89567ff1a578e5db3b47f0d87ac161fb8466c8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a121035-062f-1d35-9ae0-41ad536b138b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–88.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b43df4fcbf568c96076d936680befd256dcaef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
