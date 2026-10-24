# fderivCompContinuousLinearMapCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee6e6bb75d34501f1b6bbb09e88bb18f76f0383507c1969cae2ddb393a78e545",
  "kind": "def",
  "lexical_name": "fderivCompContinuousLinearMapCLM",
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
  "slug": "fderivcompcontinuouslinearmapclm--27400bfb5cbc6a4e17f609e0",
  "source": {
    "blob": "52e68a3388580c4af7defad23b8085005083cc20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 504,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27400bfb5cbc6a4e17f609e0240ba40a8b06a6f8ef4bf2c6301e4080b17fa1ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee6e6bb75d34501f1b6bbb09e88bb18f76f0383507c1969cae2ddb393a78e545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fderivCompContinuousLinearMapCLM (g : E →L[𝕜] F) :
    (F [⋀^ι]→L[𝕜] G) →L[𝕜] (E →L[𝕜] F) →L[𝕜] (E [⋀^ι]→L[𝕜] G) :=
  LinearMap.mkContinuous
    { toFun := (fderivCompContinuousLinearMap · g)
      map_add' f₁ f₂ := by ext; simp [Finset.sum_add_distrib]
      map_smul' c f := by ext; simp [Finset.smul_sum] }
    (Fintype.card ι * ‖g‖ ^ (Fintype.card ι - 1))
    fun f ↦ by
      refine ContinuousLinearMap.opNorm_le_bound _ (by positivity) fun dg ↦ ?_
      refine opNorm_le_bound _ (by positivity) fun v ↦ ?_
      simp? [mul_assoc] says
        simp only [LinearMap.coe_mk, AddHom.coe_mk, fderivCompContinuousLinearMap_apply, mul_assoc]
      refine (norm_sum_le _ _).trans ?_
      grw [← nsmul_eq_mul]
      apply Finset.sum_le_card_nsmul
      rintro i -
      grw [le_opNorm]
      simp only [Fintype.prod_eq_mul_prod_compl i, Function.update_self, mul_left_comm (‖g‖ ^ _)]
      grw [dg.le_opNorm, mul_assoc]
      gcongr
      rw [← Finset.card_singleton i, ← Finset.card_compl, ← Finset.prod_const,
        ← Finset.prod_mul_distrib]
      gcongr with j hj
      simpa [Function.update_of_ne (by simpa using hj)] using g.le_opNorm _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e68a3388580c4af7defad23b8085005083cc20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
