# source_residual_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32467471-c3b2-b83d-2784-92e6d0ea86d4",
  "kind": "theorem",
  "lexical_name": "source_residual_succ",
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
  "slug": "source-residual-succ--282dda01bce0ca1dccb2eebf",
  "source": {
    "blob": "84097121ab51680e49244ce224b05dc44aaaefaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:282dda01bce0ca1dccb2eebf8ddf827117da53078a2e2d1f1967d8b57d2e7cda",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32467471-c3b2-b83d-2784-92e6d0ea86d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_residual_succ {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ}
    (hs : 0 < s.re) (hs1 : s ≠ 1) :
    riemannZeta s - EndpointCorrectedJet.model N (p + 1) s =
      remainder (2 * (p + 1)) (N : ℝ) s := by
  induction p with
  | zero =>
    have hb := half_endpoint_source hN hs hs1
    have hr := scaled_step (m := 1) (by decide) hN hs
    have hc := correction_step hN 0 s
    norm_num at hb hr hc ⊢
    linear_combination hb + hr - hc
  | succ p ih =>
    have he := even_to_odd hN p hs
    have hr := scaled_step (m := 2 * (p + 1) + 1) (by omega) hN hs
    have hc := correction_step hN (p + 1) s
    have hi1 : 2 * (p + 1) + 1 + 1 = 2 * (p + 1 + 1) := by omega
    have hi2 : 2 * (p + 1 + 1) - 1 = 2 * (p + 1) + 1 := by omega
    rw [hi1] at hr
    rw [hi2] at hc
    linear_combination ih + he + hr - hc

/-- The application uses a coarser rational majorant so that no real-power
approximation is needed in its final comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84097121ab51680e49244ce224b05dc44aaaefaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
