# scaled_panel_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ee763db-1cde-f54d-9eba-f51359998e45",
  "kind": "theorem",
  "lexical_name": "scaled_panel_moment",
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
  "slug": "scaled-panel-moment--0147eca81c5357609d2a0a63",
  "source": {
    "blob": "8fb0cb9d12982b5769cf6322e5c513dc4d4b0a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0147eca81c5357609d2a0a63f70643fe1575ac432e23f5c8fb7075b56386e209",
  "verification": {
    "reference": "docs/verification/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ee763db-1cde-f54d-9eba-f51359998e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_panel_moment {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ} (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) {p H : ℝ}
    (hp : 0 < p) (hH : 0 ≤ H) :
    (∑ i ∈ s, w i * ENNReal.ofReal ((H * f i) ^ p)) =
      ENNReal.ofReal (H ^ p) * (ENNReal.ofReal p * ∫⁻ t in Set.Ioc (0 : ℝ) 1,
        superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1))) := by
  rw [← unit_panel_moment s w hf hf0 hf1 hp, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Real.mul_rpow hH (hf0 i), ENNReal.ofReal_mul (Real.rpow_nonneg hH p)]
  ac_rfl

end
end GRWTSK.RiemannHypothesis.Conversation.AtomicSuperlevels
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb0cb9d12982b5769cf6322e5c513dc4d4b0a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
