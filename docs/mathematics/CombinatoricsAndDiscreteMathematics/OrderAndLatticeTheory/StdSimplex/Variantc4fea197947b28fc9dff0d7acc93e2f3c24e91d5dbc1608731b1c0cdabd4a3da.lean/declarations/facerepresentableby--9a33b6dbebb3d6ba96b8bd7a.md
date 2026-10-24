# faceRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4469b71737527c392a9019af775c1afde3a39599fc17689df6a5e44824d7e8a",
  "kind": "def",
  "lexical_name": "faceRepresentableBy",
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
  "slug": "facerepresentableby--9a33b6dbebb3d6ba96b8bd7a",
  "source": {
    "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 401,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a33b6dbebb3d6ba96b8bd7a267d8bb67441ef1d713eb2f949471c0335cba38e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4469b71737527c392a9019af775c1afde3a39599fc17689df6a5e44824d7e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def faceRepresentableBy {n : ℕ} (S : Finset (Fin (n + 1)))
    (m : ℕ) (e : Fin (m + 1) ≃o S) :
    (face S : SSet.{u}).RepresentableBy ⦋m⦌ where
  homEquiv {j} :=
    { toFun f := ⟨objMk ((OrderHom.Subtype.val (· ∈ S)).comp
          (e.toOrderEmbedding.toOrderHom.comp f.toOrderHom)), fun _ ↦ by aesop⟩
      invFun := fun ⟨x, hx⟩ ↦ SimplexCategory.Hom.mk
        { toFun i := e.symm ⟨(objEquiv x).toOrderHom i, hx (by simp)⟩
          monotone' i₁ i₂ h := e.symm.monotone (by
            simp only [Subtype.mk_le_mk]
            exact OrderHom.monotone _ h) }
      left_inv f := by
        ext i : 3
        apply e.symm_apply_apply
      right_inv := fun ⟨x, hx⟩ ↦ by
        induction j using SimplexCategory.rec with | _ j
        dsimp
        ext i : 2
        exact congr_arg Subtype.val
          (e.apply_symm_apply ⟨(objEquiv x).toOrderHom i, _⟩) }
  homEquiv_comp f g := by aesop

/-- If a simplicial set `X` is representable by `⦋m⦌` for some `m : ℕ`, then this is the
corresponding isomorphism `Δ[m] ≅ X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98af9d488a3f7dec6733d001c95a893c9cf82f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
