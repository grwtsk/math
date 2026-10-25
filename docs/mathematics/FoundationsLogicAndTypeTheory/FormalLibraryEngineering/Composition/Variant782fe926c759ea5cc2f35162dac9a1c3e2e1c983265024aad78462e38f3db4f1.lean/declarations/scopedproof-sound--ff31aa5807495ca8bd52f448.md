# ScopedProof.sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9e552e2-2669-4a1d-441c-d339458b865a",
  "kind": "theorem",
  "lexical_name": "ScopedProof.sound",
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
  "slug": "scopedproof-sound--ff31aa5807495ca8bd52f448",
  "source": {
    "blob": "debf76c5360c2809353ca6c72f03984e758ec04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff31aa5807495ca8bd52f44846a342b8c92a0625ce9f7c123b313b9681128582",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e552e2-2669-4a1d-441c-d339458b865a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ScopedProof.sound {source : Source} {H : X → Prop} {D : Set X}
    {P : Source → X → Prop} (proof : ScopedProof source H D P) :
    ∀ x ∈ D, H x → P source x := by
  induction proof with
  | leaf proof => exact proof
  | and _ _ ihLeft ihRight =>
    exact fun x hx hH ↦ ⟨ihLeft x hx hH, ihRight x hx hH⟩
  | chooseLeft _ ih => exact fun x hx hH ↦ .inl (ih x hx hH)
  | chooseRight _ ih => exact fun x hx hH ↦ .inr (ih x hx hH)
  | implication _ transfer ih => exact fun x hx hH ↦ transfer x hx hH (ih x hx hH)
  | restrict _ subset ih => exact fun x hx hH ↦ ih x (subset hx) hH
  | cover cells coverage _ ih =>
    intro x hx hH
    obtain ⟨i, hi⟩ := coverage x hx
    exact ih i x hi hH
  | coverTail cells tail coverage _ _ ih iht =>
    intro x hx hH
    rcases coverage x hx with ⟨i, hi⟩ | ht
    · exact ih i x hi hH
    · exact iht x ht hH

/-- The maximum includes zero so empty regional covers have an explicit budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `debf76c5360c2809353ca6c72f03984e758ec04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
