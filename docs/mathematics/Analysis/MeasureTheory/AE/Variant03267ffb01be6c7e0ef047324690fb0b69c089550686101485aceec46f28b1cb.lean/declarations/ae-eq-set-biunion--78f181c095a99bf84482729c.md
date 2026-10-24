# ae_eq_set_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1929d74f-d3ea-d66a-1b19-b91d5e046d1f",
  "kind": "theorem",
  "lexical_name": "ae_eq_set_biUnion",
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
  "slug": "ae-eq-set-biunion--78f181c095a99bf84482729c",
  "source": {
    "blob": "f4e1d494be4e022a3e627042960c334d05010580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 305,
    "path": "GRWTSK/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f181c095a99bf84482729c2f515be098aa9b9affb9b01b83a8110a3dc5f3c8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1929d74f-d3ea-d66a-1b19-b91d5e046d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_set_biUnion {s : Set β} (hs : s.Countable) {t t' : β → Set α}
    (h : ∀ b ∈ s, t b =ᵐ[μ] t' b) :
    ⋃ b ∈ s, t b =ᵐ[μ] ⋃ b ∈ s, t' b :=
  .countable_bUnion hs h

set_option backward.isDefEq.respectTransparency false in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e1d494be4e022a3e627042960c334d05010580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
