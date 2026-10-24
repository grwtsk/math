# normalized_primitives_eqOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0109bb85-eafa-f40c-4fb4-4d7b2ad2d47c",
  "kind": "theorem",
  "lexical_name": "normalized_primitives_eqOn",
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
  "slug": "normalized-primitives-eqon--e91d915ca7710ccbe60755d9",
  "source": {
    "blob": "aaf1fb8d46341790cb57331e575174e918657c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91d915ca7710ccbe60755d91c136c1a9a187901127ad1944b6d470fbc2a306d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0109bb85-eafa-f40c-4fb4-4d7b2ad2d47c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_primitives_eqOn (g L K : ℂ → ℂ) (r : ℝ) (hr : 0 < r)
    (hL : ∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z)
    (hK : ∀ z ∈ ball 0 r, HasDerivAt K (logDeriv g z) z)
    (hL0 : L 0 = 0) (hK0 : K 0 = 0) : EqOn L K (ball 0 r) := by
  have hd : DifferentiableOn ℂ (fun z => L z - K z) (ball 0 r) :=
    fun z hz => ((hL z hz).sub (hK z hz)).differentiableAt.differentiableWithinAt
  have hz : EqOn (deriv (fun z => L z - K z)) 0 (ball 0 r) := by
    intro z hz
    simpa only [sub_self, Pi.zero_apply, Pi.sub_def] using ((hL z hz).sub (hK z hz)).deriv
  obtain ⟨a, ha⟩ := isOpen_ball.exists_is_const_of_deriv_eq_zero
    (convex_ball (0 : ℂ) r).isPreconnected hd hz
  have ha0 : a = 0 := by simpa [hL0, hK0] using (ha 0 (mem_ball_self hr)).symm
  intro z hz
  exact sub_eq_zero.mp (by simpa [ha0] using ha z hz)

/-- A norm ceiling and a positive anchor floor bound the real part of any exact lift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf1fb8d46341790cb57331e575174e918657c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
