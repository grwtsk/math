# rhOn_of_model_channels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e0265da-d031-fde4-90f2-0c870150b099",
  "kind": "theorem",
  "lexical_name": "rhOn_of_model_channels",
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
  "slug": "rhon-of-model-channels--461a3c79a20b5282f70f84b8",
  "source": {
    "blob": "115b8088e19ae84b239062e0da5e5cacf17d0f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 176,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461a3c79a20b5282f70f84b83395156e884529c25bc7cbb8ecd45c15060e2880",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e0265da-d031-fde4-90f2-0c870150b099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhOn_of_model_channels {U : Set ℂ}
    (hcover : ∀ z ∈ U, ZeroIsolation.MirrorApproximation.Eligible z →
      ∃ N : ℕ, 1 ≤ N ∧
        (tailRadius N < ‖even (model N) (ZeroIsolation.MirrorChannels.center z)
          (ZeroIsolation.MirrorChannels.offset z)‖ ∨
         logRadius N < ‖odd (model N) (ZeroIsolation.MirrorChannels.center z)
          (ZeroIsolation.MirrorChannels.offset z)‖)) : RHOn U := by
  intro z hz hz0
  by_contra hoff
  have he : ZeroIsolation.MirrorApproximation.Eligible z :=
    ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  obtain ⟨N,hN,hgap⟩ := hcover z hz he
  have hb := ZeroIsolation.MirrorApproximation.mirror_endpoints_in_band he
  have hp : ZeroIsolation.MirrorChannels.center z+ZeroIsolation.MirrorChannels.offset z ∈ strip :=
    ⟨hb.1.1,hb.1.2.1⟩
  have hm : ZeroIsolation.MirrorChannels.center z-ZeroIsolation.MirrorChannels.offset z ∈ strip :=
    ⟨hb.2.1,hb.2.2.1⟩
  apply excludes_pair hN (ZeroIsolation.MirrorChannels.offset_ne_zero hoff) hp hm hgap
  rw [ZeroIsolation.MirrorChannels.center_plus_offset,ZeroIsolation.MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

/-- A strong all-height approximation statement has NOT supplied this cover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `115b8088e19ae84b239062e0da5e5cacf17d0f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
