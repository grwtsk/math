# next_eq_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:207cec5e-8d80-2e4d-f1c9-da78f6a3327d",
  "kind": "theorem",
  "lexical_name": "next_eq_getElem",
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
  "slug": "next-eq-getelem--283f521b96ffb95b73d7e711",
  "source": {
    "blob": "5fa83af5b538a159cc576422e7be4e56725a88f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant9253fe35a58dde8d0fa1dd0432694b51841de7b1041499540aa62f24f3081f80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:283f521b96ffb95b73d7e711e7c6ff4471e75ef89e2e8bfa73e04782d3b3e9f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant9253fe35a58dde8d0fa1dd0432694b51841de7b1041499540aa62f24f3081f80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:207cec5e-8d80-2e4d-f1c9-da78f6a3327d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_eq_getElem {l : List α} {a : α} (ha : a ∈ l) :
    l.next a ha = l[(l.idxOf a + 1) % l.length]'(Nat.mod_lt _ <| by grind) := by
  have hl := ne_nil_of_mem ha
  by_cases ha' : a ∈ l.dropLast
  · simp [next, nextOr_eq_getElem_idxOf_succ_of_mem_dropLast ha',
      Nat.mod_eq_of_lt <| succ_idxOf_lt_length_of_mem_dropLast ha']
  grind [dropLast_append_getLast, next_getLast_eq_head_of_notMem_dropLast, Nat.mod_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant9253fe35a58dde8d0fa1dd0432694b51841de7b1041499540aa62f24f3081f80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant9253fe35a58dde8d0fa1dd0432694b51841de7b1041499540aa62f24f3081f80.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa83af5b538a159cc576422e7be4e56725a88f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
