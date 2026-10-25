# clear_insertRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6345dc3-4e12-dde8-213e-caa036b682ef",
  "kind": "theorem",
  "lexical_name": "clear_insertRat",
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
  "slug": "clear-insertrat--8dc23ad6f9f207fc7d80c142",
  "source": {
    "blob": "2c04c09788493c687c58fe407707bf2ea0dfcc7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc23ad6f9f207fc7d80c1424f78ad8f1c406dc821a3ee0450bf6ace6076ead9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6345dc3-4e12-dde8-213e-caa036b682ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clear_insertRat {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ f.assignments.size = n) (units : CNF.Clause (PosFin n)) :
    clearRatUnits (f.insertRatUnits units).1 = f := by
  simp only [clearRatUnits]
  ext : 1
  · simp only [insertRatUnits]
  · simp only [insertRatUnits]
  · grind
  · simp only
    let motive := ClearInsertInductionMotive f hf.2 (insertRatUnits f units).1.ratUnits
    have h_base : motive 0 (insertRatUnits f units).1.assignments := clear_insertRat_base_case f hf units
    have h_inductive (idx : Fin (insertRatUnits f units).1.ratUnits.size) (assignments : Array Assignment)
      (ih : motive idx.val assignments) : motive (idx.val + 1) (clearUnit assignments (insertRatUnits f units).1.ratUnits[idx]) :=
      clear_insert_inductive_case f hf.2 (insertRatUnits f units).1.ratUnits
        (nodup_insertRatUnits f hf units) idx assignments ih
    rcases Array.foldl_induction motive h_base h_inductive with ⟨h_size, h⟩
    apply Array.ext
    · rw [h_size, hf.2]
    · intro i hi1 hi2
      have i_lt_n : i < n := by omega
      specialize h ⟨i, i_lt_n⟩
      rcases h with h | h | h
      · exact h.1
      · omega -- FIXME why can't `grind` do this?
      · omega -- FIXME why can't `grind` do this?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c04c09788493c687c58fe407707bf2ea0dfcc7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
