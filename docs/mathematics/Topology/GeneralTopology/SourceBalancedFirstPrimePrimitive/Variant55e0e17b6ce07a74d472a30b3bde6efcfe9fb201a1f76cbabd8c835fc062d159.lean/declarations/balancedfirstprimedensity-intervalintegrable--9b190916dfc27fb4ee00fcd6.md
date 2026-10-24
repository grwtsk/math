# balancedFirstPrimeDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8603c72-28db-ac74-a2af-d34a1adf126a",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimeDensity_intervalIntegrable",
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
  "slug": "balancedfirstprimedensity-intervalintegrable--9b190916dfc27fb4ee00fcd6",
  "source": {
    "blob": "720281a45b1ec20abac1242a8ce2ba4c5d6dcf30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b190916dfc27fb4ee00fcd63566f96803faac21618fde2adb7b6358fbbc3030",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8603c72-28db-ac74-a2af-d34a1adf126a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimeDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable balancedFirstPrimeDensity volume a b := by
  suffices h : ∀ a b : ℝ, a ≤ b →
      IntervalIntegrable balancedFirstPrimeDensity volume a b by
    rcases le_total a b with hab | hba
    · exact h a b hab
    · exact (h b a hba).symm
  intro a b hab
  have hi := theta_time_density_integrable a b hab
  have he : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume a b :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hc : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume a b :=
    intervalIntegrable_const
  simpa only [← balancedFirstPrimeDensity_eq] using (hi.sub he).add hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720281a45b1ec20abac1242a8ce2ba4c5d6dcf30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
