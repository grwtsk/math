# model_eq_previous_plus_corrections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26b66128-a8cc-15fa-726d-fd5eb67581a5",
  "kind": "theorem",
  "lexical_name": "model_eq_previous_plus_corrections",
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
  "slug": "model-eq-previous-plus-corrections--b54fe93988d1ed6636a33f72",
  "source": {
    "blob": "e124bf3fc4b9af2d47b0326e29ea0c883302619c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b54fe93988d1ed6636a33f7291bbda372d8fc1e58e57c40bb470150e5a448c03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26b66128-a8cc-15fa-726d-fd5eb67581a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_eq_previous_plus_corrections {N : ℕ} (hN : 1 ≤ N) (p : ℕ)
    {s : ℂ} (hs : s ≠ 1) :
    model N p s = FinitePowerZetaJet.model N s + (N : ℂ) ^ (-s) *
      (-1 / 2 + ∑ j ∈ Finset.range p,
        (weight N (j + 1) : ℂ) * PochhammerJet.value (2 * (j + 1) - 1) s) := by
  rw [FinitePowerZetaJet.model_eq_sum_endpoint N hs, ← nat_neg_cpow_mul hN s]
  unfold model coefficient
  simp only [div_eq_mul_inv]
  ring

/-- Converting a correction denominator to a complex power requires a positive base. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e124bf3fc4b9af2d47b0326e29ea0c883302619c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
