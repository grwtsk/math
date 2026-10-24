# domCoprod'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3370911962a6fb8d7d70d4adb8163dcf6fdc8ae66d591452725e63a6675dd17b",
  "kind": "def",
  "lexical_name": "domCoprod'",
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
  "slug": "domcoprod--7f029c0b79a02ed8012e7bcb",
  "source": {
    "blob": "c3f2c21f84302f4bbaaf13a036c17f479a8a94cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1127,
    "line": 1106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f029c0b79a02ed8012e7bcbc6c8cccae7c871d01f79b6d0e6610f32f9ca017a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3370911962a6fb8d7d70d4adb8163dcf6fdc8ae66d591452725e63a6675dd17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1106–1127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def domCoprod' :
    AlternatingMap R' Mᵢ N₁ ιa ⊗[R'] AlternatingMap R' Mᵢ N₂ ιb →ₗ[R']
      AlternatingMap R' Mᵢ (N₁ ⊗[R'] N₂) (Sum ιa ιb) :=
  TensorProduct.lift <| by
    refine'
      LinearMap.mk₂ R' domCoprod (fun m₁ m₂ n => _) (fun c m n => _) (fun m n₁ n₂ => _)
        fun c m n => _ <;>
    · ext
      simp only [domCoprod_apply, add_apply, smul_apply, ← Finset.sum_add_distrib,
        Finset.smul_sum, MultilinearMap.sum_apply, domCoprod.summand]
      congr
      ext σ
      refine Quotient.inductionOn' σ fun σ => ?_
      simp only [Quotient.liftOn'_mk'', coe_add, coe_smul, MultilinearMap.smul_apply,
        ← MultilinearMap.domCoprod'_apply]
      simp only [TensorProduct.add_tmul, ← TensorProduct.smul_tmul', TensorProduct.tmul_add,
        TensorProduct.tmul_smul, LinearMap.map_add, LinearMap.map_smul]
      first | rw [← smul_add] | rw [smul_comm]
      rfl
#align alternating_map.dom_coprod' AlternatingMap.domCoprod'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean#L1106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f2c21f84302f4bbaaf13a036c17f479a8a94cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
