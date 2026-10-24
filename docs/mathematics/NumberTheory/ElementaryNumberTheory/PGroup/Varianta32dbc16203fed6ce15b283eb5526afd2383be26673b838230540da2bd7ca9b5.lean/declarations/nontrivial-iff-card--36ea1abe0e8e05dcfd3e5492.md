# nontrivial_iff_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9553a8a9e6494ed976482ce11813a26519cba29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:264e434e-582e-4d59-f3c5-01859191488d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8e859fa-e4fc-0b04-faa1-8c33823f98dd",
  "kind": "theorem",
  "lexical_name": "nontrivial_iff_card",
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
  "slug": "nontrivial-iff-card--36ea1abe0e8e05dcfd3e5492",
  "source": {
    "blob": "f9553a8a9e6494ed976482ce11813a26519cba29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36ea1abe0e8e05dcfd3e5492f5969db7b60c7ffb6879e8009b7417df526f5fb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e859fa-e4fc-0b04-faa1-8c33823f98dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_iff_card [Finite G] : Nontrivial G ↔ ∃ n > 0, Nat.card G = p ^ n :=
  ⟨fun hGnt =>
    let ⟨k, hk⟩ := iff_card.1 hG
    ⟨k,
      Nat.pos_of_ne_zero fun hk0 => by
        rw [hk0, pow_zero] at hk; exact Finite.one_lt_card.ne' hk,
      hk⟩,
    fun ⟨_, hk0, hk⟩ =>
    Finite.one_lt_card_iff_nontrivial.1 <|
      hk.symm ▸ one_lt_pow₀ (Fact.out (p := p.Prime)).one_lt (ne_of_gt hk0)⟩

variable {α : Type*} [MulAction G α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9553a8a9e6494ed976482ce11813a26519cba29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
