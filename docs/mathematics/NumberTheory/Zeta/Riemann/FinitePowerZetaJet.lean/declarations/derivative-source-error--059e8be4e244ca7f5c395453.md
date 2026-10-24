# derivative_source_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51f25271-aaa1-5bb8-da1c-39cd95c1a283",
  "kind": "theorem",
  "lexical_name": "derivative_source_error",
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
  "slug": "derivative-source-error--059e8be4e244ca7f5c395453",
  "source": {
    "blob": "f6efc38233d9567d21957251a9a87ad84430cf46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:059e8be4e244ca7f5c39545310a4fb6d2660619c64a1ed86e1fdcbe2850cf7e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f25271-aaa1-5bb8-da1c-39cd95c1a283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_source_error {N : ℕ} {c : ℂ} {S σ δ B : ℝ}
    (hN : 1 ≤ N) (hS : 0 < S) (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ) (hB : ‖c‖ + S ≤ B) :
    ‖deriv riemannZeta c - deriv (model N) c‖ ≤
      (B * ((N : ℝ) ^ (-σ) / σ)) / S := by
  apply derivative_error_at_center hS
    (fun z hz => differentiableAt_riemannZeta (disk_bounds hσ hδ hleft hright hB hz).2.2.2)
    (fun z hz => model_differentiableAt hN (disk_bounds hσ hδ hleft hright hB hz).2.2.2)
  intro z hz
  exact source_error_on_disk hN hσ hδ hleft hright hB z (sphere_subset_closedBall hz)

/-- Separate finite model evaluation from the infinite source remainder, in both jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6efc38233d9567d21957251a9a87ad84430cf46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
