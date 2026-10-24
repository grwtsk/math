# resolvent_isBigO_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bfd2e50-36b3-762b-8b0f-28f5b4eb4c50",
  "kind": "theorem",
  "lexical_name": "resolvent_isBigO_inv",
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
  "slug": "resolvent-isbigo-inv--c4a2378522ad2369d111b753",
  "source": {
    "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a2378522ad2369d111b7537613839a62c564b3c76655ed4289b8fa04862b82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bfd2e50-36b3-762b-8b0f-28f5b4eb4c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_isBigO_inv (a : A) : resolvent a =O[cobounded 𝕜] Inv.inv :=
  have h : (fun z ↦ resolvent (z⁻¹ • a) (1 : 𝕜)) =O[cobounded 𝕜] (fun _ ↦ (1 : ℝ)) := by
    simpa [Function.comp_def, resolvent] using
      (NormedRing.inverse_one_sub_norm (R := A)).comp_tendsto
        (by simpa using (tendsto_inv₀_cobounded (α := 𝕜)).smul_const a)
  calc
    resolvent a =ᶠ[cobounded 𝕜] fun z ↦ z⁻¹ • resolvent (z⁻¹ • a) (1 : 𝕜) := by
      filter_upwards [isBounded_singleton (x := 0)] with z hz
      lift z to 𝕜ˣ using Ne.isUnit hz
      simpa [Units.smul_def] using congr(z⁻¹ • $(units_smul_resolvent_self (r := z) (a := a)))
    _ =O[cobounded 𝕜] (· ⁻¹) := .of_norm_right <| by
      simpa using (isBigO_refl (· ⁻¹) (cobounded 𝕜)).norm_right.smul h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
