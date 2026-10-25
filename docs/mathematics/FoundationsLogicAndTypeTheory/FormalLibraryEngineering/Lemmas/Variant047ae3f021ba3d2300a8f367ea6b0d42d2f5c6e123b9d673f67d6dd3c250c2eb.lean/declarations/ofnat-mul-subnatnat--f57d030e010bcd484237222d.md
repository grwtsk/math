# ofNat_mul_subNatNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33173638-3c82-1c44-e6bb-3ac2b9baf717",
  "kind": "theorem",
  "lexical_name": "ofNat_mul_subNatNat",
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
  "slug": "ofnat-mul-subnatnat--f57d030e010bcd484237222d",
  "source": {
    "blob": "cacf6df61c305b006f4ff5fa954a6341a8d8c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 467,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f57d030e010bcd484237222d753e56753fdbfc2ccc7f83ce912f606cd6c38ef9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33173638-3c82-1c44-e6bb-3ac2b9baf717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_mul_subNatNat (m n k : Nat) :
    m * subNatNat n k = subNatNat (m * n) (m * k) := by
  cases m with
  | zero => simp [Int.zero_mul, Nat.zero_mul, subNatNat_self]
  | succ m => cases n.lt_or_ge k with
    | inl h =>
      have h' : succ m * n < succ m * k := Nat.mul_lt_mul_of_pos_left h (Nat.succ_pos m)
      simp only [subNatNat_of_lt h, pred_eq_sub_one, ofNat_mul_negSucc', succ_eq_add_one,
        subNatNat_of_lt h']
      rw [sub_one_add_one_eq_of_pos (Nat.sub_pos_of_lt h), ← neg_ofNat_succ, Nat.mul_sub_left_distrib,
        ← succ_pred_eq_of_pos (Nat.sub_pos_of_lt h')]; rfl
    | inr h =>
      have h' : succ m * k ≤ succ m * n := Nat.mul_le_mul_left _ h
      simp [subNatNat_of_le h, subNatNat_of_le h', Nat.mul_sub_left_distrib,
        -natCast_mul, -natCast_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cacf6df61c305b006f4ff5fa954a6341a8d8c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
