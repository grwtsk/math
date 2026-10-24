# filter_fst_eq_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97fe7a88-0034-955a-903d-647b28278206",
  "kind": "theorem",
  "lexical_name": "filter_fst_eq_antidiagonal",
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
  "slug": "filter-fst-eq-antidiagonal--57a9b928be4930cb1b112822",
  "source": {
    "blob": "4415e5e53a8ffa948cc0edd2d4a55593cbf397d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a9b928be4930cb1b1128227650d67915011e488307544478154f186327c62c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97fe7a88-0034-955a-903d-647b28278206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_fst_eq_antidiagonal (n m : A) [DecidablePred (· = m)] [Decidable (m ≤ n)] :
    {x ∈ antidiagonal n | x.fst = m} = if m ≤ n then {(m, n - m)} else ∅ := by
  ext ⟨a, b⟩
  suffices a = m → (a + b = n ↔ m ≤ n ∧ b = n - m) by
    rw [mem_filter, mem_antidiagonal, apply_ite (fun n ↦ (a, b) ∈ n), mem_singleton,
      Prod.mk_inj, ite_prop_iff_or]
    simpa [← and_assoc, @and_right_comm _ (a = _), and_congr_left_iff]
  rintro rfl
  constructor
  · rintro rfl
    exact ⟨le_add_right le_rfl, (add_tsub_cancel_left _ _).symm⟩
  · rintro ⟨h, rfl⟩
    exact add_tsub_cancel_of_le h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4415e5e53a8ffa948cc0edd2d4a55593cbf397d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
