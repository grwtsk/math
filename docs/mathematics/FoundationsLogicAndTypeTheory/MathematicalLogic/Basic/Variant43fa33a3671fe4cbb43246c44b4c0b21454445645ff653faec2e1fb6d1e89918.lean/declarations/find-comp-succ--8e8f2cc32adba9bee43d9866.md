# find_comp_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:485c0f2a-724a-220c-3252-e1a83f8177b0",
  "kind": "theorem",
  "lexical_name": "find_comp_succ",
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
  "slug": "find-comp-succ--8e8f2cc32adba9bee43d9866",
  "source": {
    "blob": "098ebfc22e883c6693f8a11bd08dca22b9a9302f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 864,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e8f2cc32adba9bee43d9866c86333bb658bda5d97a3b986a807765ee7f6482c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485c0f2a-724a-220c-3252-e1a83f8177b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 864–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find_comp_succ (h₁ : ∃ n, p n) (h₂ : ∃ n, p (n + 1)) (h0 : ¬p 0) :
    Nat.find h₁ = Nat.find h₂ + 1 := by
  refine' (find_eq_iff _).2 ⟨Nat.find_spec h₂, fun n hn => _⟩
  cases' n with n
  exacts [h0, @Nat.find_min (fun n => p (n + 1)) _ h₂ _ (succ_lt_succ_iff.1 hn)]
#align nat.find_comp_succ Nat.find_comp_succ

end Find

/-! ### `find_greatest` -/


section FindGreatest

/-- `find_greatest P b` is the largest `i ≤ bound` such that `P i` holds, or `0` if no such `i`
exists -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean#L864).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `098ebfc22e883c6693f8a11bd08dca22b9a9302f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
