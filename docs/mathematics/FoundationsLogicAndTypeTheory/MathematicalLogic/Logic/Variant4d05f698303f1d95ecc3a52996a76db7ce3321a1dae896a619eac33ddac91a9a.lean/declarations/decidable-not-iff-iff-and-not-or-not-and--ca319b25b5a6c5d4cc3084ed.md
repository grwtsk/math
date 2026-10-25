# Decidable.not_iff_iff_and_not_or_not_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba466de76de7c40de1d57ba97f058449c0bfa529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e04ef640-6cb8-fae0-e73a-d42576fcb7c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b579bea-4fcd-31ee-b519-b0c44719804c",
  "kind": "theorem",
  "lexical_name": "Decidable.not_iff_iff_and_not_or_not_and",
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
  "slug": "decidable-not-iff-iff-and-not-or-not-and--ca319b25b5a6c5d4cc3084ed",
  "source": {
    "blob": "ba466de76de7c40de1d57ba97f058449c0bfa529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca319b25b5a6c5d4cc3084edb7c96f12f4cf31f92787108ec9bc0bc6e53a6e89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b579bea-4fcd-31ee-b519-b0c44719804c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Decidable.not_iff_iff_and_not_or_not_and [Decidable a] [Decidable b] :
    (¬ (a ↔ b)) ↔ (a ∧ ¬ b) ∨ ((¬ a) ∧ b) :=
  ⟨fun e => if hb : b then
    .inr ⟨fun ha => e ⟨fun _ => hb, fun _ => ha⟩, hb⟩
  else
    .inl ⟨if ha : a then ha else False.elim (e ⟨fun ha' => absurd ha' ha, fun hb' => absurd hb' hb⟩), hb⟩,
  Or.rec (And.rec fun ha nb w => nb (w.mp ha)) (And.rec fun na hb w => na (w.mpr hb))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba466de76de7c40de1d57ba97f058449c0bfa529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
