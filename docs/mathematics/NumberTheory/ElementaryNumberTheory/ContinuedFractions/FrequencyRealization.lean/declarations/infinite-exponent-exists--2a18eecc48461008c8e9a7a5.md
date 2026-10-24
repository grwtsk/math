# infinite_exponent_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ca18213-a3b3-6356-fe22-deff467c4962",
  "kind": "theorem",
  "lexical_name": "infinite_exponent_exists",
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
  "slug": "infinite-exponent-exists--2a18eecc48461008c8e9a7a5",
  "source": {
    "blob": "9dfe868ea52027095f1c600ae0983ff6f22db1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 356,
    "path": "GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a18eecc48461008c8e9a7a52f46e5ae85360b43a0e9e12cbff2f8b1fd595a4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ca18213-a3b3-6356-fe22-deff467c4962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infinite_exponent_exists :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ Irrational alpha ∧
      frequencyExponent alpha = ⊤ := by
  obtain ⟨alpha, hp, hlt, hirr, _, he⟩ :=
    spike_frequency_exists (fun n ↦ (n : ℝ)) (fun n ↦ Nat.cast_nonneg n)
  have ht : Tendsto (fun n : ℕ ↦ ENNReal.ofReal (n : ℝ)) atTop (𝓝 ⊤) :=
    ENNReal.tendsto_ofReal_atTop.comp tendsto_natCast_atTop_atTop
  exact ⟨alpha, hp, hlt, hirr, he.trans ht.limsup_eq⟩

end GRWTSK.RiemannHypothesis.BranchFrequencyExistence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dfe868ea52027095f1c600ae0983ff6f22db1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
