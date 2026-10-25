# equiv_free_prod_prod_multiplicative_zmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73c7e435-d7c3-ad49-2ae5-bc2b97b1ce85",
  "kind": "theorem",
  "lexical_name": "equiv_free_prod_prod_multiplicative_zmod",
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
  "slug": "equiv-free-prod-prod-multiplicative-zmod--c6050d041daf80cd64018423",
  "source": {
    "blob": "d29964f7e602d4f1c93ec34f711d18a9abd6a76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6050d041daf80cd64018423abb4a42f39bcc08984a0a84b4ad07e7f969bc632",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c7e435-d7c3-ad49-2ae5-bc2b97b1ce85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_free_prod_prod_multiplicative_zmod (G : Type*) [CommGroup G] [hG : Group.FG G] :
    ∃ (ι j : Type) (_ : Fintype ι) (_ : Fintype j) (p : ι → ℕ)
    (_ : ∀ i, Nat.Prime <| p i) (e : ι → ℕ),
      Nonempty <| G ≃* (j → Multiplicative ℤ) × ((i : ι) → Multiplicative (ZMod (p i ^ e i))) := by
  obtain ⟨n, ι, inst, x, p, e, equiv⟩ := AddCommGroup.equiv_free_prod_directSum_zmod (Additive G)
  exact ⟨ι, Fin n, inst, inferInstance, x, p, e, ⟨MulEquiv.toAdditive.symm <| equiv.some.trans <|
    ((Finsupp.addEquivFunOnFinite.trans <| ((AddEquiv.piAdditive _).trans <|
        (AddEquiv.additiveMultiplicative ℤ).arrowCongr (Equiv.refl _)).symm).prodCongr
          (DirectSum.addEquivProd _ )).trans <| (AddEquiv.prodAdditive _ _).symm⟩⟩

end CommGroup

namespace Subgroup

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d29964f7e602d4f1c93ec34f711d18a9abd6a76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
