# two_mul_count_bool_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7f39ee8-a1de-40b0-cb5a-a43cfc06ab58",
  "kind": "theorem",
  "lexical_name": "two_mul_count_bool_eq_ite",
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
  "slug": "two-mul-count-bool-eq-ite--76ad6d8903adaa35a02e4b41",
  "source": {
    "blob": "8dbc61badd1e456facc5ddd69132b4c1a7c57a24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ad6d8903adaa35a02e4b41499b52d29f293cdb1298f17414f62716f40f0b81",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7f39ee8-a1de-40b0-cb5a-a43cfc06ab58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_count_bool_eq_ite (hl : Chain' (· ≠ ·) l) (b : Bool) :
    2 * count b l =
      if Even (length l) then length l else
      if Option.some b == l.head? then length l + 1 else length l - 1 := by
  by_cases h2 : Even (length l)
  · rw [if_pos h2, hl.two_mul_count_bool_of_even h2]
  · rcases l with - | ⟨x, l⟩
    · exact (h2 .zero).elim
    simp only [if_neg h2, count_cons, mul_add, head?, Option.mem_some_iff, @eq_comm _ x]
    rw [length_cons, Nat.even_add_one, not_not] at h2
    replace hl : l.Chain' (· ≠ ·) := hl.tail
    rw [hl.two_mul_count_bool_of_even h2]
    cases b <;> cases x <;> split_ifs <;> simp <;> contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dbc61badd1e456facc5ddd69132b4c1a7c57a24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
