# decodeSubtype_encodeSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bbe2791-9b18-e7f3-e8d5-8005d4e63b19",
  "kind": "theorem",
  "lexical_name": "decodeSubtype_encodeSubtype",
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
  "slug": "decodesubtype-encodesubtype--c5f89a81abb1278c9b5b403a",
  "source": {
    "blob": "34842f544b53c9ed6b375df6fce249942bd7ac12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5f89a81abb1278c9b5b403a9dd4e396d5008890f9cb82805d561a1081f76d6e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bbe2791-9b18-e7f3-e8d5-8005d4e63b19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem decodeSubtype_encodeSubtype (P : Fin n → Prop) [DecidablePred P] (x : { x // P x}) :
    decodeSubtype P (encodeSubtype P x) = x := by
  match x with
  | ⟨i, h⟩ =>
    induction n with
    | zero => absurd x.val.is_lt; simp
    | succ n ih =>
      if h₀ : P 0 then
        simp only [decodeSubtype, dif_pos h₀]
        cases i using Fin.cases with
        | zero => rw [encodeSubtype_zero_pos h₀]
        | succ i =>
          rw [encodeSubtype_succ_pos h₀]
          simp only [val_cast, val_succ, Fin.eta, Subtype.mk.injEq]
          congr
          rw [ih (fun i => P i.succ) ⟨i, h⟩]
      else
        simp only [decodeSubtype, dif_neg h₀]
        cases i using Fin.cases with
        | zero => contradiction
        | succ i =>
          rw [encodeSubtype_succ_neg h₀]
          simp only [val_cast, Fin.eta, Subtype.mk.injEq]
          congr
          rw [ih (fun i => P i.succ) ⟨i, h⟩]

/-- Get representative for the equivalence class of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34842f544b53c9ed6b375df6fce249942bd7ac12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
