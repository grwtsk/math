# count_I_eq_length_of_count_U_zero_and_neg_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ad71a7-e0b8-7d92-2601-d531f394cef8",
  "kind": "theorem",
  "lexical_name": "count_I_eq_length_of_count_U_zero_and_neg_mem",
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
  "slug": "count-i-eq-length-of-count-u-zero-and-neg-mem--38dca10cde749703e205f96e",
  "source": {
    "blob": "c932cdb35f56fe593ecec2cc48ea4784c0885c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38dca10cde749703e205f96e897c54bdbc0f5ccc323a695c1d5f84729dc5ff06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ad71a7-e0b8-7d92-2601-d531f394cef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_I_eq_length_of_count_U_zero_and_neg_mem {ys : Miustr} (hu : count U ys = 0)
    (hm : M ∉ ys) : count I ys = length ys := by
  induction' ys with x xs hxs
  · rfl
  · cases x
    · -- case `x = M` gives a contradiction.
      exfalso; exact hm mem_cons_self
    · -- case `x = I`
      rw [count_cons, beq_self_eq_true, if_pos rfl, length, succ_inj]
      apply hxs
      · simpa only [count]
      · rw [mem_cons, not_or] at hm; exact hm.2
    · -- case `x = U` gives a contradiction.
      simp_all

/-- `base_case_suf` is the base case of the sufficiency result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c932cdb35f56fe593ecec2cc48ea4784c0885c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
