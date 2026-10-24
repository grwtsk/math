# hasDerivAt_resolvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:451789fe-fed0-6508-7e60-708fd98c33f6",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_resolvent",
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
  "slug": "hasderivat-resolvent--e3b7e1a733a23a6788545e1a",
  "source": {
    "blob": "34a2695c0503dfea021f3abf7c0114c663196023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3b7e1a733a23a6788545e1a77e0c84aca38bd7f42930325ee4ff5448fab4078",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:451789fe-fed0-6508-7e60-708fd98c33f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_resolvent {a : A} {k : 𝕜} (hk : k ∈ ρ a) :
    HasDerivAt (resolvent a) (-resolvent a k ^ 2) k := by
  have H₁ : HasFDerivAt Ring.inverse _ (↑ₐ k - a) := hasFDerivAt_ring_inverse (𝕜 := 𝕜) hk.unit
  have H₂ : HasDerivAt (fun k => ↑ₐ k - a) 1 k := by
    simpa using (Algebra.linearMap 𝕜 A).hasDerivAt.sub_const a
  simpa [resolvent, sq, hk.unit_spec, ← Ring.inverse_unit hk.unit] using H₁.comp_hasDerivAt k H₂
#align spectrum.has_deriv_at_resolvent spectrum.hasDerivAt_resolvent

/- TODO: Once there is sufficient API for bornology, we should get a nice filter / asymptotics
version of this, for example: `Tendsto (resolvent a) (cobounded 𝕜) (𝓝 0)` or more specifically
`(resolvent a) =O[cobounded 𝕜] (fun z ↦ z⁻¹)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a2695c0503dfea021f3abf7c0114c663196023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
