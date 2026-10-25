# exists_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a771a6c-8814-5596-f022-f04c329248d1",
  "kind": "theorem",
  "lexical_name": "exists_succ",
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
  "slug": "exists-succ--3d14a38583cc05fe7ba01f76",
  "source": {
    "blob": "1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d14a38583cc05fe7ba01f76aae6ca19060da845a52fcef48e44aabac8547eaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a771a6c-8814-5596-f022-f04c329248d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_succ (x : s) : ∃ n, (x : ℕ) + n + 1 ∈ s := by
  by_contra h
  have (a : ℕ) (ha : a ∈ s) : a < x + 1 :=
    lt_of_not_ge fun hax => h ⟨a - (x + 1), by rwa [Nat.add_right_comm, Nat.add_sub_cancel' hax]⟩
  classical
  exact Fintype.false
    ⟨(((Multiset.range (succ x)).filter (· ∈ s)).pmap
      (fun (y : ℕ) (hy : y ∈ s) => Subtype.mk y hy) (by simp [-Multiset.range_succ])).toFinset,
      by simpa [Subtype.ext_iff_val, Multiset.mem_filter, -Multiset.range_succ] ⟩

end Classical

variable [DecidablePred (· ∈ s)]

/-- Returns the next natural in a set, according to the usual ordering of `ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
