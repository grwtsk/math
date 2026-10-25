# formula_performRatCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed4e9fd379152a75d693c67e68912c000dd68559",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77a83476-c368-25b4-fd37-198c67801d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f457750-e340-0811-e018-f4432d1ebe0a",
  "kind": "theorem",
  "lexical_name": "formula_performRatCheck",
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
  "slug": "formula-performratcheck--7726e082ab4d5c744ad04f47",
  "source": {
    "blob": "ed4e9fd379152a75d693c67e68912c000dd68559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7726e082ab4d5c744ad04f47e9cb2a1118a9f521dd4869a3248acca391d9578e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f457750-e340-0811-e018-f4432d1ebe0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formula_performRatCheck {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ f.assignments.size = n) (p : Literal (PosFin n))
    (ratHint : Nat × Array Nat) :
    (performRatCheck f p ratHint).1 = f := by
  simp only [performRatCheck, Bool.or_eq_true, Bool.not_eq_true']
  split
  next c _ =>
    split
    · rw [clear_insertRat f hf]
    · let fc := (insertRatUnits f (negate (DefaultClause.delete c p))).1
      have fc_assignments_size : fc.assignments.size = n := by rw [size_assignments_insertRatUnits, hf.2]
      have insertRatUnits_rw : (insertRatUnits f (negate (DefaultClause.delete c p))).1 =
        ⟨(insertRatUnits f (negate (DefaultClause.delete c p))).1.clauses,
         (insertRatUnits f (negate (DefaultClause.delete c p))).1.rupUnits,
         (insertRatUnits f (negate (DefaultClause.delete c p))).1.ratUnits,
         (insertRatUnits f (negate (DefaultClause.delete c p))).1.assignments⟩ := rfl
      simp only [clauses_performRupCheck, rupUnits_performRupCheck, ratUnits_performRupCheck]
      rw [restoreAssignments_performRupCheck fc fc_assignments_size ratHint.2, ← insertRatUnits_rw,
        clear_insertRat f hf (negate (DefaultClause.delete c p))]
      grind
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed4e9fd379152a75d693c67e68912c000dd68559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
