# HomotopyRel.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efb934b74b9d472d2b07b437bfcac95770445a093cc2e9ef94c6a8f024772dd0",
  "kind": "def",
  "lexical_name": "HomotopyRel.prod",
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
  "slug": "homotopyrel-prod--2b0c89bbac9146e413afccc0",
  "source": {
    "blob": "9f3f92ffe6771c8d70acb23c76f94f015dcf7edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 104,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b0c89bbac9146e413afccc0abf8fa0436476d92c45608c2a957c1ffc9a423a2",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efb934b74b9d472d2b07b437bfcac95770445a093cc2e9ef94c6a8f024772dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HomotopyRel.prod (F : HomotopyRel f₀ f₁ S) (G : HomotopyRel g₀ g₁ S) :
    HomotopyRel (prodMk f₀ g₀) (prodMk f₁ g₁) S :=
  { Homotopy.prod F.toHomotopy G.toHomotopy with
    prop' := by
      intro t x hx
      have hF := F.prop' t x hx
      have hG := G.prop' t x hx
      simp only [coe_mk, prod_eval, Prod.mk.inj_iff, Homotopy.prod] at hF hG⊢
      exact ⟨⟨hF.1, hG.1⟩, ⟨hF.2, hG.2⟩⟩ }
#align continuous_map.homotopy_rel.prod ContinuousMap.HomotopyRel.prod

end Prod

end ContinuousMap

namespace Path.Homotopic

attribute [local instance] Path.Homotopic.setoid

local infixl:70 " ⬝ " => Quotient.comp

section Pi

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)] {as bs cs : ∀ i, X i}

/-- The product of a family of path homotopies. This is just a specialization of `HomotopyRel`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3f92ffe6771c8d70acb23c76f94f015dcf7edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
