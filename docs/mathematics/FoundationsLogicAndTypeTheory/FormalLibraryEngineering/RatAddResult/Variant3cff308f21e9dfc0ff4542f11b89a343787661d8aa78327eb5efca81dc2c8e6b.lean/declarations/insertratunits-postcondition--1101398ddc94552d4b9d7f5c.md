# insertRatUnits_postcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2605ff41-456e-cc3f-e3a5-00c87c83dd62",
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
  "slug": "insertratunits-postcondition--1101398ddc94552d4b9d7f5c",
  "source": {
    "blob": "2c04c09788493c687c58fe407707bf2ea0dfcc7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1101398ddc94552d4b9d7f5c212ba84acc2edf69960128f7e95857a0eee9196c",
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

Occurrence: `result:2605ff41-456e-cc3f-e3a5-00c87c83dd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c04c09788493c687c58fe407707bf2ea0dfcc7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
