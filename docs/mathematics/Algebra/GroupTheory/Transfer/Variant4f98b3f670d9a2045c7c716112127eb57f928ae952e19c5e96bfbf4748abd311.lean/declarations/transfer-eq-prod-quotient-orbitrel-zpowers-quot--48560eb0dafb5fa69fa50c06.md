# transfer_eq_prod_quotient_orbitRel_zpowers_quot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65fe8385-f57d-a42c-dbe3-0261bd5ffa64",
  "kind": "theorem",
  "lexical_name": "transfer_eq_prod_quotient_orbitRel_zpowers_quot",
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
  "slug": "transfer-eq-prod-quotient-orbitrel-zpowers-quot--48560eb0dafb5fa69fa50c06",
  "source": {
    "blob": "f33ef53ddbda61c4e97a059161c54ab54a70be53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48560eb0dafb5fa69fa50c066e260bbd0a995718b0f682df5d8bce0cb802aefb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65fe8385-f57d-a42c-dbe3-0261bd5ffa64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transfer_eq_prod_quotient_orbitRel_zpowers_quot [FiniteIndex H] (g : G)
    [Fintype (Quotient (orbitRel (zpowers g) (G ⧸ H)))] :
    transfer ϕ g =
      ∏ q : Quotient (orbitRel (zpowers g) (G ⧸ H)),
        ϕ
          ⟨q.out.out⁻¹ * g ^ Function.minimalPeriod (g • ·) q.out * q.out.out,
            QuotientGroup.out_conj_pow_minimalPeriod_mem H g q.out⟩ := by
  classical
    letI := H.fintypeQuotientOfFiniteIndex
    calc
      transfer ϕ g = ∏ q : G ⧸ H, _ := transfer_def ϕ (transferTransversal H g) g
      _ = _ := ((quotientEquivSigmaZMod H g).symm.prod_comp _).symm
      _ = _ := Finset.prod_sigma _ _ _
      _ = _ := by
        refine Fintype.prod_congr _ _ (fun q => ?_)
        simp only [quotientEquivSigmaZMod_symm_apply, transferTransversal_apply',
          transferTransversal_apply'']
        rw [Fintype.prod_eq_single (0 : ZMod (Function.minimalPeriod (g • ·) q.out)) _]
        · simp only [if_pos, ZMod.cast_zero, zpow_zero, one_mul, mul_assoc]
        · intro k hk
          simp only [if_neg hk, inv_mul_cancel]
          exact map_one ϕ

/-- Auxiliary lemma in order to state `transfer_eq_pow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33ef53ddbda61c4e97a059161c54ab54a70be53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
