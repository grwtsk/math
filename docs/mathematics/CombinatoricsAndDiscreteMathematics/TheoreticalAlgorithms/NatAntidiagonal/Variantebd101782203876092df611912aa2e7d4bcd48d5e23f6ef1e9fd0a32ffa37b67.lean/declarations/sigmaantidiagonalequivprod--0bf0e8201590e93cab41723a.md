# sigmaAntidiagonalEquivProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9834896fd22e185c1cf0139d04fcb251a13b033912d0257bf34c723f67b206b2",
  "kind": "def",
  "lexical_name": "sigmaAntidiagonalEquivProd",
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
  "slug": "sigmaantidiagonalequivprod--0bf0e8201590e93cab41723a",
  "source": {
    "blob": "3c426ccfe858215afcaccfe4d9169353fb01f3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bf0e8201590e93cab41723a25b83a883493a8cdc90b804dd68fbedb4714d988",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9834896fd22e185c1cf0139d04fcb251a13b033912d0257bf34c723f67b206b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaAntidiagonalEquivProd : (Σn : ℕ, antidiagonal n) ≃ ℕ × ℕ where
  toFun x := x.2
  invFun x := ⟨x.1 + x.2, x, mem_antidiagonal.mpr rfl⟩
  left_inv := by
    rintro ⟨n, ⟨k, l⟩, h⟩
    rw [mem_antidiagonal] at h
    exact Sigma.subtype_ext h rfl
  right_inv x := rfl
#align finset.nat.sigma_antidiagonal_equiv_prod Finset.Nat.sigmaAntidiagonalEquivProd
#align finset.nat.sigma_antidiagonal_equiv_prod_symm_apply_fst Finset.Nat.sigmaAntidiagonalEquivProd_symm_apply_fst
#align finset.nat.sigma_antidiagonal_equiv_prod_symm_apply_snd_coe Finset.Nat.sigmaAntidiagonalEquivProd_symm_apply_snd_coe
#align finset.nat.sigma_antidiagonal_equiv_prod_apply Finset.Nat.sigmaAntidiagonalEquivProd_apply

end EquivProd

/-- The set `antidiagonal n` is equivalent to `Fin (n+1)`, via the first projection. --/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c426ccfe858215afcaccfe4d9169353fb01f3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
