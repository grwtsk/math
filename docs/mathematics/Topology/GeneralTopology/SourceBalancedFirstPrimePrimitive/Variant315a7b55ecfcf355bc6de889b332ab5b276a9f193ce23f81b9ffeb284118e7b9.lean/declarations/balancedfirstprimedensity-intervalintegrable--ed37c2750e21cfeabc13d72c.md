# balancedFirstPrimeDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:529b9e04-6cfa-2b3c-40ab-a9a07eee7fce",
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
  "slug": "balancedfirstprimedensity-intervalintegrable--ed37c2750e21cfeabc13d72c",
  "source": {
    "blob": "25d5ca9a3a057a112c4e27821363cb6168197d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant315a7b55ecfcf355bc6de889b332ab5b276a9f193ce23f81b9ffeb284118e7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed37c2750e21cfeabc13d72c6c8cad996231f61ec5ca1b3af4b2910be3485efb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant315a7b55ecfcf355bc6de889b332ab5b276a9f193ce23f81b9ffeb284118e7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:529b9e04-6cfa-2b3c-40ab-a9a07eee7fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant315a7b55ecfcf355bc6de889b332ab5b276a9f193ce23f81b9ffeb284118e7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant315a7b55ecfcf355bc6de889b332ab5b276a9f193ce23f81b9ffeb284118e7b9.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25d5ca9a3a057a112c4e27821363cb6168197d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
