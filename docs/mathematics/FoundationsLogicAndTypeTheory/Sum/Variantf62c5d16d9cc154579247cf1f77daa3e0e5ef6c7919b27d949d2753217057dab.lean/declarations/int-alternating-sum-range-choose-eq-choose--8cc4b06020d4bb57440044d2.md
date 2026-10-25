# Int.alternating_sum_range_choose_eq_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4670531-2475-1d0d-5f5f-48f79efa90f2",
  "kind": "theorem",
  "lexical_name": "Int.alternating_sum_range_choose_eq_choose",
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
  "slug": "int-alternating-sum-range-choose-eq-choose--8cc4b06020d4bb57440044d2",
  "source": {
    "blob": "48a72b18dd1389212a40252652b9d1709e75bd31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc4b06020d4bb57440044d2d6cff92c96bd413c1a932d3768847bb1e9f90e1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4670531-2475-1d0d-5f5f-48f79efa90f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.alternating_sum_range_choose_eq_choose {n m : ℕ} :
    (∑ k ∈ range (m + 1), ((-1) ^ k * (n + 1).choose k : ℤ)) = (-1) ^ m * n.choose m := by
  induction m with
  | zero => simp
  | succ m hm =>
    rw [sum_range_succ, hm, choose_succ_succ]
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a72b18dd1389212a40252652b9d1709e75bd31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
