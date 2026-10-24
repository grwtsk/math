# positive_floor_not_cofinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:861ce8f6-3713-e114-5fe8-6805950024c6",
  "kind": "theorem",
  "lexical_name": "positive_floor_not_cofinal",
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
  "slug": "positive-floor-not-cofinal--3e97d104c91bec91c1452059",
  "source": {
    "blob": "695ac2e5080e93ea4bcf619913ee2f4ac3beaff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e97d104c91bec91c145205972d4bbd74eb574728a90b0a620fbaa5795e3e0c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CofinalEnergyDamping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:861ce8f6-3713-e114-5fe8-6805950024c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_floor_not_cofinal (d : ℕ → ℝ) {a : ℝ} (ha : 0 < a)
    (hfloor : ∀ n : ℕ, a ≤ d n) :
    ¬ (∀ σ : ℝ, 0 < σ → ∃ n : ℕ, d n ≤ σ) := by
  intro h
  obtain ⟨n, hn⟩ := h (a / 2) (by linarith)
  have hf := hfloor n
  linarith

/-- Finite prefixes of the prescribed schedule cannot cover arbitrarily small dampings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CofinalEnergyDamping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695ac2e5080e93ea4bcf619913ee2f4ac3beaff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
