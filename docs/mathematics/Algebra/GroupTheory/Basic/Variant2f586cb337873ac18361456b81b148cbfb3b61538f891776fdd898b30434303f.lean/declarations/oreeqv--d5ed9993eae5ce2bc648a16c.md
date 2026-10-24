# oreEqv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a23cf7c688ab7305eed619eed2d196292faf7a18f73588c05afe9ee992e3a68",
  "kind": "def",
  "lexical_name": "oreEqv",
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
  "slug": "oreeqv--d5ed9993eae5ce2bc648a16c",
  "source": {
    "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5ed9993eae5ce2bc648a16cd88df3c7672510180b276ee35e864b6b4c55da66",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a23cf7c688ab7305eed619eed2d196292faf7a18f73588c05afe9ee992e3a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oreEqv : Setoid (X × S) where
  r rs rs' := ∃ (u : S) (v : R), u • rs'.1 = v • rs.1 ∧ u * rs'.2 = v * rs.2
  iseqv := by
    refine ⟨fun _ => ⟨1, 1, by simp⟩, ?_, ?_⟩
    · rintro ⟨r, s⟩ ⟨r', s'⟩ ⟨u, v, hru, hsu⟩; dsimp only at *
      rcases oreCondition (s : R) s' with ⟨r₂, s₂, h₁⟩
      rcases oreCondition r₂ u with ⟨r₃, s₃, h₂⟩
      have : r₃ * v * s = s₃ * s₂ * s := by
        -- Porting note: the proof used `assoc_rw`
        rw [mul_assoc _ (s₂ : R), h₁, ← mul_assoc, h₂, mul_assoc, ← hsu, ← mul_assoc]
      rcases ore_right_cancel (r₃ * v) (s₃ * s₂) s this with ⟨w, hw⟩
      refine ⟨w * (s₃ * s₂), w * (r₃ * u), ?_, ?_⟩ <;>
        simp only [Submonoid.coe_mul, Submonoid.smul_def, ← hw]
      · simp only [mul_smul, hru, ← Submonoid.smul_def]
      · simp only [mul_assoc, hsu]
    · rintro ⟨r₁, s₁⟩ ⟨r₂, s₂⟩ ⟨r₃, s₃⟩ ⟨u, v, hur₁, hs₁u⟩ ⟨u', v', hur₂, hs₂u⟩
      rcases oreCondition v' u with ⟨r', s', h⟩; dsimp only at *
      refine ⟨s' * u', r' * v, ?_, ?_⟩ <;>
        simp only [Submonoid.smul_def, Submonoid.coe_mul, mul_smul, mul_assoc] at *
      · rw [hur₂, smul_smul, h, mul_smul, hur₁]
      · rw [hs₂u, ← mul_assoc, h, mul_assoc, hs₁u]

end OreLocalization

/-- The Ore localization of a monoid and a submonoid fulfilling the Ore condition. -/
@[to_additive AddOreLocalization "The Ore localization of an additive monoid and a submonoid
fulfilling the Ore condition."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf44a79828b938c6400893f676e0b3c79e306139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
