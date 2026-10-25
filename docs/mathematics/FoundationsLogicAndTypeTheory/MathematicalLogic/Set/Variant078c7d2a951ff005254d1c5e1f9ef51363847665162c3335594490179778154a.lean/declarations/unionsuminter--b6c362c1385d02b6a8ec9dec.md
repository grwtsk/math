# unionSumInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d1bd620b56f0a5dc39e80ecd85d8e29aaec462d3f07f2c1177be21fc34a4143",
  "kind": "def",
  "lexical_name": "unionSumInter",
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
  "slug": "unionsuminter--b6c362c1385d02b6a8ec9dec",
  "source": {
    "blob": "bbd7ea2a50434124f400ef3fe18b26e101f78aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6c362c1385d02b6a8ec9decb9bbbd31d5178a226b8cc1eb530bda9cd1432681",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d1bd620b56f0a5dc39e80ecd85d8e29aaec462d3f07f2c1177be21fc34a4143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def unionSumInter {α : Type u} (s t : Set α) [DecidablePred (· ∈ s)] :
    (s ∪ t : Set α) ⊕ (s ∩ t : Set α) ≃ s ⊕ t :=
  calc
    (s ∪ t : Set α) ⊕ (s ∩ t : Set α)
      ≃ (s ∪ t \ s : Set α) ⊕ (s ∩ t : Set α) := by rw [union_diff_self]
    _ ≃ (s ⊕ (t \ s : Set α)) ⊕ (s ∩ t : Set α) :=
      sumCongr (Set.union disjoint_sdiff_self_right) (Equiv.refl _)
    _ ≃ s ⊕ ((t \ s : Set α) ⊕ (s ∩ t : Set α)) := sumAssoc _ _ _
    _ ≃ s ⊕ (t \ s ∪ s ∩ t : Set α) :=
      sumCongr (Equiv.refl _)
        (by
          refine (Set.union' (· ∉ s) ?_ ?_).symm
          exacts [fun x hx => hx.2, fun x hx => not_not_intro hx.1])
    _ ≃ s ⊕ t := by
      { rw [(_ : t \ s ∪ s ∩ t = t)]
        rw [union_comm, inter_comm, inter_union_diff] }

/-- Given an equivalence `e₀` between sets `s : Set α` and `t : Set β`, the set of equivalences
`e : α ≃ β` such that `e ↑x = ↑(e₀ x)` for each `x : s` is equivalent to the set of equivalences
between `sᶜ` and `tᶜ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant078c7d2a951ff005254d1c5e1f9ef51363847665162c3335594490179778154a.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd7ea2a50434124f400ef3fe18b26e101f78aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
