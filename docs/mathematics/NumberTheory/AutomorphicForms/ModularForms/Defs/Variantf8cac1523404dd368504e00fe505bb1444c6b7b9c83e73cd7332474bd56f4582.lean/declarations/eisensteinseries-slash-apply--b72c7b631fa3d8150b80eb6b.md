# eisensteinSeries_slash_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:276f9de0-a7c6-349d-498a-6564dbec59bd",
  "kind": "lemma",
  "lexical_name": "eisensteinSeries_slash_apply",
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
  "slug": "eisensteinseries-slash-apply--b72c7b631fa3d8150b80eb6b",
  "source": {
    "blob": "e187a602f998dd4ffc196767cc2dd753f61ba6c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 215,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variantf8cac1523404dd368504e00fe505bb1444c6b7b9c83e73cd7332474bd56f4582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b72c7b631fa3d8150b80eb6bca3b708ad9e0f238107cd450514463d569022c2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Defs/Variantf8cac1523404dd368504e00fe505bb1444c6b7b9c83e73cd7332474bd56f4582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:276f9de0-a7c6-349d-498a-6564dbec59bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eisensteinSeries_slash_apply (k : ℤ) (γ : SL(2, ℤ)) :
    eisensteinSeries a k ∣[k] γ = eisensteinSeries (a ᵥ* γ) k := by
  ext1 z
  simp_rw [SL_slash_apply, zpow_neg,
    mul_inv_eq_iff_eq_mul₀ (zpow_ne_zero _ <| denom_ne_zero _ z),
    eisensteinSeries, eisSummand_SL2_apply, tsum_mul_left, mul_comm (_ ^ k)]
  congr 1
  exact (gammaSetEquiv a γ).tsum_eq (eisSummand k · z)

/-- The `SlashInvariantForm` defined by an Eisenstein series of weight `k : ℤ`, level `Γ(N)`,
and congruence condition given by `a : Fin 2 → ZMod N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Defs/Variantf8cac1523404dd368504e00fe505bb1444c6b7b9c83e73cd7332474bd56f4582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variantf8cac1523404dd368504e00fe505bb1444c6b7b9c83e73cd7332474bd56f4582.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e187a602f998dd4ffc196767cc2dd753f61ba6c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
