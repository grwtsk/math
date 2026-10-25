# eq_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fdacdd0-9897-d36b-1359-de1042395dcb",
  "kind": "theorem",
  "lexical_name": "eq_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero",
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
  "slug": "eq-of-bot-eq-bot-of-top-eq-top-of-length-eq-zero--b4edf8261d1c8b2cb4863ec3",
  "source": {
    "blob": "cb416f0837ba6e3ce21c1bec0d61226067f19f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 740,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4edf8261d1c8b2cb4863ec3e4e5047b4d6cdd95b63a109b0cefc5940802bbe4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fdacdd0-9897-d36b-1359-de1042395dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero {s₁ s₂ : CompositionSeries X}
    (hb : s₁.bot = s₂.bot) (ht : s₁.top = s₂.top) (hs₁0 : s₁.length = 0) : s₁ = s₂ := by
  have : ∀ x, x ∈ s₁ ↔ x = s₁.top := fun x =>
    ⟨fun hx => forall_mem_eq_of_length_eq_zero hs₁0 hx s₁.top_mem, fun hx => hx.symm ▸ s₁.top_mem⟩
  have : ∀ x, x ∈ s₂ ↔ x = s₂.top := fun x =>
    ⟨fun hx =>
      forall_mem_eq_of_length_eq_zero
        (length_eq_zero_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero hb ht hs₁0) hx s₂.top_mem,
      fun hx => hx.symm ▸ s₂.top_mem⟩
  ext
  simp [*]
#align composition_series.eq_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero CompositionSeries.eq_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero

/-- Given a `CompositionSeries`, `s`, and an element `x`
such that `x` is maximal inside `s.top` there is a series, `t`,
such that `t.top = x`, `t.bot = s.bot`
and `snoc t s.top _` is equivalent to `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb416f0837ba6e3ce21c1bec0d61226067f19f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
