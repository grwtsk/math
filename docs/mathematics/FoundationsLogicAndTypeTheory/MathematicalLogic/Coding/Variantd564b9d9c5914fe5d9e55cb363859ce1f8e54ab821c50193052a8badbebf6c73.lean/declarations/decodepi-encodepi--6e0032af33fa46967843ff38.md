# decodePi_encodePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:996300e3-38c6-f249-15a8-fb2effaf81a2",
  "kind": "theorem",
  "lexical_name": "decodePi_encodePi",
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
  "slug": "decodepi-encodepi--6e0032af33fa46967843ff38",
  "source": {
    "blob": "a706f5c5966d21258c26604b9241b83ddd169836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 341,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e0032af33fa46967843ff38e32783de058d75ce3a7a6fbaf4a69c3f6c22e996",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:996300e3-38c6-f249-15a8-fb2effaf81a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem decodePi_encodePi (f : Fin n → Nat) (x : (i : Fin n) → Fin (f i)) :
    decodePi f (encodePi f x) = x := by
  induction n with
  | zero => funext i; nomatch i
  | succ n ih =>
    have h0 : 0 < f 0 := Nat.zero_lt_of_lt (x 0).is_lt
    funext i
    simp only [decodePi]
    split
    · simp [encodePi, Nat.mod_eq_of_lt (x 0).is_lt]
    · next i hi =>
      have h : decodePi (f ·.succ) (encodePi (f ·.succ) fun i => x i.succ)
          ⟨i, Nat.lt_of_succ_lt_succ hi⟩ = x ⟨i+1, hi⟩ := by simp [ih (f ·.succ)]; done
      conv => rhs; rw [← h]
      congr; simp [encodePi, Nat.mul_add_div h0, Nat.div_eq_of_lt (x 0).is_lt]; rfl

/-- Encode `{ i : Fin n // P i }` into `Fin (Fin.countP P)` where `P` is a decidable predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variantd564b9d9c5914fe5d9e55cb363859ce1f8e54ab821c50193052a8badbebf6c73.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a706f5c5966d21258c26604b9241b83ddd169836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
