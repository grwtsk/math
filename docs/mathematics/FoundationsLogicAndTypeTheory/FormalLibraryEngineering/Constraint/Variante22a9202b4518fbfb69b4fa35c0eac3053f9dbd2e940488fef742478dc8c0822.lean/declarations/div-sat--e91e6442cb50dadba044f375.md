# div_sat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e53728ba-ec85-8588-e4ba-afbac88a0430",
  "kind": "theorem",
  "lexical_name": "div_sat",
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
  "slug": "div-sat--e91e6442cb50dadba044f375",
  "source": {
    "blob": "6979c80efbf0260eeb20d9c2c0cf451085306d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91e6442cb50dadba044f3750c488affc1b7783a0859cff79ee2c81a01c895b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e53728ba-ec85-8588-e4ba-afbac88a0430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_sat (c : Constraint) (t : Int) (k : Nat) (n : k ≠ 0) (h : (k : Int) ∣ t) (w : c.sat t) :
    (c.div k).sat (t / k) := by
  replace n : (k : Int) > 0 := Int.ofNat_lt.mpr (Nat.pos_of_ne_zero n)
  rcases c with ⟨_ | l, _ | u⟩
  · simp_all [sat, div]
  · simp [sat, div] at w ⊢
    apply Int.le_of_sub_nonneg
    rw [← Int.sub_ediv_of_dvd _ h, Int.ediv_nonneg_iff_of_pos n]
    exact Int.sub_nonneg_of_le w
  · simp [sat, div] at w ⊢
    apply Int.le_of_sub_nonneg
    rw [Int.sub_neg, ← Int.add_ediv_of_dvd_left h, Int.ediv_nonneg_iff_of_pos n]
    exact Int.sub_nonneg_of_le w
  · simp [sat, div] at w ⊢
    constructor
    · apply Int.le_of_sub_nonneg
      rw [Int.sub_neg, ← Int.add_ediv_of_dvd_left h, Int.ediv_nonneg_iff_of_pos n]
      exact Int.sub_nonneg_of_le w.1
    · apply Int.le_of_sub_nonneg
      rw [← Int.sub_ediv_of_dvd _ h, Int.ediv_nonneg_iff_of_pos n]
      exact Int.sub_nonneg_of_le w.2

/--
It is convenient below to say that a constraint is satisfied at the dot product of two vectors,
so we make an abbreviation `sat'` for this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6979c80efbf0260eeb20d9c2c0cf451085306d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
