# arithmetic_residual_channels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2886efd2-d2fb-99da-29c0-3f0c1adbbdf5",
  "kind": "theorem",
  "lexical_name": "arithmetic_residual_channels",
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
  "slug": "arithmetic-residual-channels--4edb9e1e157b6ca44deb976a",
  "source": {
    "blob": "20cf837eba5b85f03830dc5ff354e1bdefdc5b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4edb9e1e157b6ca44deb976ae72d38f44a348ca76f65a2d719da95344dc03fb7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2886efd2-d2fb-99da-29c0-3f0c1adbbdf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_residual_channels {N : ℕ} {z : ℂ}
    (hN : 1 ≤ N) (hx : 0 < z.re) (hx1 : z.re < 1) (hoff : z.re ≠ 1/2) :
    (Pair.even poleNormalizedZeta (center z) (offset z)-
        Pair.even (finiteModel N) (center z) (offset z) =
      -(Pair.even multiplier (center z) (offset z)*
          Pair.even (tail (N : ℝ)) (center z) (offset z)+
        (offset z)^2*Pair.odd multiplier (center z) (offset z)*
          Pair.odd (tail (N : ℝ)) (center z) (offset z))) ∧
    (Pair.odd poleNormalizedZeta (center z) (offset z)-
        Pair.odd (finiteModel N) (center z) (offset z) =
      -(Pair.even multiplier (center z) (offset z)*
          Pair.odd (tail (N : ℝ)) (center z) (offset z)+
        Pair.odd multiplier (center z) (offset z)*
          Pair.even (tail (N : ℝ)) (center z) (offset z))) := by
  have hp := finiteModel_residual (N := N) (s := z) hN hx
  have hm := finiteModel_residual (N := N) (s := criticalReflection z) hN (by
    simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
    linarith)
  have he : Pair.even poleNormalizedZeta (center z) (offset z)-
      Pair.even (finiteModel N) (center z) (offset z) =
      -Pair.even (fun w => multiplier w*tail (N : ℝ) w) (center z) (offset z) := by
    unfold GRWTSK.Analysis.Complex.SymmetricPair.even
    rw [center_plus_offset,center_minus_offset]
    linear_combination (1/2 : ℂ)*hp+(1/2 : ℂ)*hm
  have ho : Pair.odd poleNormalizedZeta (center z) (offset z)-
      Pair.odd (finiteModel N) (center z) (offset z) =
      -Pair.odd (fun w => multiplier w*tail (N : ℝ) w) (center z) (offset z) := by
    unfold GRWTSK.Analysis.Complex.SymmetricPair.odd
    rw [center_plus_offset,center_minus_offset]
    linear_combination (1/(2*offset z))*hp-(1/(2*offset z))*hm
  rw [Pair.even_product] at he
  rw [Pair.odd_product _ _ _ (offset_ne_zero hoff)] at ho
  exact ⟨he,ho⟩

/-- No all-height margin is supplied here. Each witness must enclose the ACTUAL
source at both mirror endpoints and prove its own strict model margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf837eba5b85f03830dc5ff354e1bdefdc5b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
