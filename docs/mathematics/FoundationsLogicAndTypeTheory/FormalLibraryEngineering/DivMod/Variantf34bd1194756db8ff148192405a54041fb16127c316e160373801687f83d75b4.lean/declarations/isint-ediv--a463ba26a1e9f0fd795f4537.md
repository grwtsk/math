# isInt_ediv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e78a79a7-4969-9096-dabc-ef333cf81d5f",
  "kind": "lemma",
  "lexical_name": "isInt_ediv",
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
  "slug": "isint-ediv--a463ba26a1e9f0fd795f4537",
  "source": {
    "blob": "898f68707aa16854689916e289d4ab5c057b3923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a463ba26a1e9f0fd795f4537ac09fea5757ddf6c30585f5a77d5c74869144525",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e78a79a7-4969-9096-dabc-ef333cf81d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isInt_ediv {a b q m a' : ℤ} {b' r : ℕ}
    (ha : IsInt a a') (hb : IsNat b b')
    (hm : q * b' = m) (h : r + m = a') (h₂ : Nat.blt r b' = true) :
    IsInt (a / b) q := ⟨by
  obtain ⟨⟨rfl⟩, ⟨rfl⟩⟩ := ha, hb
  simp only [Nat.blt_eq] at h₂; simp only [← h, ← hm, Int.cast_id]
  rw [Int.add_mul_ediv_right _ _ (Int.ofNat_ne_zero.2 ((Nat.zero_le ..).trans_lt h₂).ne')]
  rw [Int.ediv_eq_zero_of_lt, zero_add] <;> [simp; simpa using h₂]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898f68707aa16854689916e289d4ab5c057b3923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
