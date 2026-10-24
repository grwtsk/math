# pinnedPrimeWeightBoundedDeficit_le_iff_target_sub_error_le_capacity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c2ea785-5c20-7eb4-57c3-3cb6869c656c",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightBoundedDeficit_le_iff_target_sub_error_le_capacity",
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
  "slug": "pinnedprimeweightboundeddeficit-le-iff-target-sub-error-le-capacity--5fda1bb12f87585dee01fa71",
  "source": {
    "blob": "626068b47c529c01361f775183bde7e10478dfa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fda1bb12f87585dee01fa716d86491bc1d79c511259cdcff715bd480cca5d10",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c2ea785-5c20-7eb4-57c3-3cb6869c656c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightBoundedDeficit_le_iff_target_sub_error_le_capacity
    {X : ℕ} {C v E : ℝ} (hE : 0 ≤ E) :
    pinnedPrimeWeightBoundedDeficit X C v ≤ E ↔
      (|thetaError v| + 1) - E ≤
        pinnedPrimeWeightBoundedCapacity X C := by
  unfold pinnedPrimeWeightBoundedDeficit
  constructor
  · intro h
    have hsub :
        (|thetaError v| + 1) -
            pinnedPrimeWeightBoundedCapacity X C ≤ E :=
      (le_max_right (0 : ℝ)
        ((|thetaError v| + 1) -
          pinnedPrimeWeightBoundedCapacity X C)).trans h
    linarith
  · intro h
    exact max_le hE (by linarith)

/-- At a positive scale, the capacity inequality is exactly the
coefficient-weighted amplitude-square requirement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626068b47c529c01361f775183bde7e10478dfa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
