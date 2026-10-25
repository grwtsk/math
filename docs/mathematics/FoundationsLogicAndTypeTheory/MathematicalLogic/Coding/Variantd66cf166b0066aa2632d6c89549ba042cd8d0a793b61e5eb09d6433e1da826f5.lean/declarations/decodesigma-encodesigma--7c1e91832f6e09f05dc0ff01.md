# decodeSigma_encodeSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1996267d-328e-6298-15b1-3cee381aab66",
  "kind": "theorem",
  "lexical_name": "decodeSigma_encodeSigma",
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
  "slug": "decodesigma-encodesigma--7c1e91832f6e09f05dc0ff01",
  "source": {
    "blob": "5d20ed0d417ba2531877641fe383a99c6c49b73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c1e91832f6e09f05dc0ff01c8b64638fbacabeb0600aec8b79acdb66b3c575e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1996267d-328e-6298-15b1-3cee381aab66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem decodeSigma_encodeSigma (f : Fin n → Nat) (x : (i : Fin n) × Fin (f i)) :
    decodeSigma f (encodeSigma f x) = x := by
  induction n with
  | zero => nomatch x
  | succ n ih =>
    simp only [decodeSigma]
    match x with
    | ⟨⟨0, _⟩, x, hx⟩ =>
      split
      · rfl
      · contradiction
    | ⟨⟨i+1, hi⟩, ⟨x, hx⟩⟩ =>
      have : ¬ encodeSigma f ⟨⟨i+1, hi⟩, ⟨x, hx⟩⟩ < f 0 := by simp [encodeSigma]
      rw [dite_eq_right this]
      have : (encodeSigma f ⟨⟨i+1, hi⟩, ⟨x, hx⟩⟩).1 - f 0 =
          (encodeSigma (f ·.succ) ⟨⟨i, Nat.lt_of_succ_lt_succ hi⟩, ⟨x, hx⟩⟩).1 := by
        simp [encodeSigma, Nat.add_sub_cancel_left]
      have h := ih (f ·.succ) ⟨⟨i, Nat.lt_of_succ_lt_succ hi⟩, ⟨x, hx⟩⟩
      simp [Sigma.ext_iff, Fin.ext_iff] at h ⊢
      constructor
      · conv => rhs; rw [← h.1]
        apply congrArg
        apply congrArg Sigma.fst
        congr
      · apply HEq.trans _ h.2; congr

/-- Encode `Fin m → Fin n` into `Fin (n ^ m)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d20ed0d417ba2531877641fe383a99c6c49b73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
