# insertRatUnits_postcondition

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
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:764b015c-11de-d859-069b-a13cb05975b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61328013-0b71-a39c-47af-a2a2f001b815",
  "kind": "theorem",
  "lexical_name": "insertRatUnits_postcondition",
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
  "slug": "insertratunits-postcondition--f279f716a3c9a23573d06244",
  "source": {
    "blob": "ed4e9fd379152a75d693c67e68912c000dd68559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f279f716a3c9a23573d06244c1eea5aa0b6d2a80653816ffc1a0a6c2a06d45a9",
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

Occurrence: `result:61328013-0b71-a39c-47af-a2a2f001b815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertRatUnits_postcondition {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ f.assignments.size = n)
    (units : CNF.Clause (PosFin n)) :
    let assignments := (insertRatUnits f units).fst.assignments
    have hsize : assignments.size = n := by grind [size_assignments_insertRatUnits]
    let ratUnits := (insertRatUnits f units).1.ratUnits
    InsertUnitInvariant f.assignments hf.2 ratUnits assignments hsize := by
  simp only [insertRatUnits]
  have hsize : f.assignments.size = n := by rw [hf.2]
  have h0 : InsertUnitInvariant f.assignments hf.2 f.ratUnits f.assignments hsize := by
    intro i
    apply Or.inl
    simp only [Fin.getElem_fin, ne_eq, true_and]
    intro j
    simp only [hf.1, List.size_toArray, List.length_nil] at j
    exact Fin.elim0 j
  exact insertUnitInvariant_insertUnit_fold f.assignments hf.2 f.ratUnits f.assignments hsize false units h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed4e9fd379152a75d693c67e68912c000dd68559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
