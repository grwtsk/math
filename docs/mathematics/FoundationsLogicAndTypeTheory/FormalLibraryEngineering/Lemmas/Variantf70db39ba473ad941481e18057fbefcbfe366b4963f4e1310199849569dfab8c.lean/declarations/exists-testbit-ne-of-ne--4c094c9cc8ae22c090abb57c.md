# exists_testBit_ne_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c8c5591-ea5f-5ee0-b574-568c6af3149c",
  "kind": "theorem",
  "lexical_name": "exists_testBit_ne_of_ne",
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
  "slug": "exists-testbit-ne-of-ne--4c094c9cc8ae22c090abb57c",
  "source": {
    "blob": "13928f1646079f8cf5e67bf1a29431a1557e6804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c094c9cc8ae22c090abb57c1dee7f1e081b96ad25946ad5228aedc39466126b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c8c5591-ea5f-5ee0-b574-568c6af3149c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_testBit_ne_of_ne {x y : Nat} (p : x ≠ y) : ∃ i, testBit x i ≠ testBit y i := by
  induction y using Nat.div2Induction generalizing x with
  | ind y hyp =>
    cases Nat.eq_zero_or_pos y with
    | inl yz =>
      simp only [yz, Nat.zero_testBit]
      simp only [yz] at p
      have ⟨i,ip⟩  := exists_testBit_of_ne_zero p
      apply Exists.intro i
      simp [ip]
    | inr ypos =>
      if lsb_diff : x % 2 = y % 2 then
        rw [←Nat.div_add_mod x 2, ←Nat.div_add_mod y 2] at p
        simp only [ne_eq, lsb_diff, Nat.add_right_cancel_iff,
          Nat.zero_lt_succ, Nat.mul_left_cancel_iff] at p
        have ⟨i, ieq⟩  := hyp ypos p
        apply Exists.intro (i+1)
        simpa
      else
        apply Exists.intro 0
        simp only [testBit_zero]
        revert lsb_diff
        cases mod_two_eq_zero_or_one x with
        | _ p => cases mod_two_eq_zero_or_one y with | _ q => simp [p,q]

/--
`eq_of_testBit_eq` allows proving two natural numbers are equal
if their bits are all equal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13928f1646079f8cf5e67bf1a29431a1557e6804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
