# _root_.GRWTSK.Analysis.MeasureTheory.CountablyGenerated.Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.eq_const_of_measurable_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92d8d446-6c87-de24-1ef1-6b541bf1a698",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.CountablyGenerated.Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.eq_const_of_measurable_bot",
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
  "slug": "root-grwtsk-analysis-measuretheory-countablygenerated-variant3ef89e992c3--10e3037449cc86c588a643f8",
  "source": {
    "blob": "ac0bd980ce8cc705b8545067c50c1179c151a466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 313,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10e3037449cc86c588a643f8d8b8e44a976d7c98e08505998c0424b087a0c072",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d8d446-6c87-de24-1ef1-6b541bf1a698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.CountablyGenerated.Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.eq_const_of_measurable_bot [MeasurableSpace β] [Nonempty β]
    [SeparatesPoints β] {f : α → β} (hf : Measurable[⊥] f) :
    ∃ c, f = fun _ ↦ c := by
  have h (a₁ : α) (a₂ : α) : f a₁ = f a₂ := by
    by_contra! h
    obtain ⟨s, hs, hx, hy⟩ := exists_measurableSet_of_ne h
    obtain h' | h' := MeasurableSpace.measurableSet_bot_iff.mp (hf hs)
    · absurd hx
      simp [← mem_preimage, h']
    · absurd hy
      simp [← mem_preimage, h']
  obtain h' | h' := isEmpty_or_nonempty α
  · use (Classical.ofNonempty : β), funext (by simp)
  · use f (Classical.ofNonempty : α), funext (fun x ↦ h _ _)

/-- We say that a measurable space is countably separated if there is a
countable sequence of measurable sets separating points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac0bd980ce8cc705b8545067c50c1179c151a466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
