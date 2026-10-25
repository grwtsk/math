# encodePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:895f62bea05dc0eaf022559efaa3b19a4c2f87ecca874c505e49c7478c20bfac",
  "kind": "def",
  "lexical_name": "encodePi",
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
  "slug": "encodepi--d6323e72aba67c9c10a59d71",
  "source": {
    "blob": "5d20ed0d417ba2531877641fe383a99c6c49b73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6323e72aba67c9c10a59d71433b4ef12fd857a5037a66922e3889e51cb353a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:895f62bea05dc0eaf022559efaa3b19a4c2f87ecca874c505e49c7478c20bfac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def encodePi (f : Fin n → Nat) (x : (i : Fin n) → Fin (f i)) : Fin (Fin.prod f) :=
  match n, f, x with
  | 0, _, _ => ⟨0, by simp [Fin.prod]⟩
  | _+1, f, x =>
    match encodePi ((f ·.succ)) (fun ⟨i, hi⟩ => x ⟨i+1, Nat.succ_lt_succ hi⟩) with
    | ⟨k, hk⟩ => Fin.mk (f 0 * k + (x 0).val) $ calc
      _ < f 0 * k + f 0 := by grind
      _ = f 0 * (k + 1) := by grind
      _ ≤ f 0 * Fin.prod (f ∘ succ) := Nat.mul_le_mul_left _ (Nat.succ_le_of_lt hk)
      _ = Fin.prod f := Eq.symm <| prod_succ ..

/-- Decode `(i : Fin n) → Fin (f i)` from `Fin (Fin.prod f)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd66cf166b0066aa2632d6c89549ba042cd8d0a793b61e5eb09d6433e1da826f5.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d20ed0d417ba2531877641fe383a99c6c49b73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
