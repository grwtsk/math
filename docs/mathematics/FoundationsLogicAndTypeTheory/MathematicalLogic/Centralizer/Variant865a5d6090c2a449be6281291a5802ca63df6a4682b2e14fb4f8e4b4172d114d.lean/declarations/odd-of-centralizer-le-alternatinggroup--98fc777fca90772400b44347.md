# odd_of_centralizer_le_alternatingGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57a414f8-1380-47d5-f02e-f2db3c958d22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0eb6a838-11ef-79a7-769b-b24aedd7cedd",
  "kind": "theorem",
  "lexical_name": "odd_of_centralizer_le_alternatingGroup",
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
  "slug": "odd-of-centralizer-le-alternatinggroup--98fc777fca90772400b44347",
  "source": {
    "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98fc777fca90772400b4434767e7fbb18b20f02eed8f06bc78383dfb6a3a5ae7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eb6a838-11ef-79a7-769b-b24aedd7cedd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_of_centralizer_le_alternatingGroup (h : Subgroup.centralizer {g} ≤ alternatingGroup α)
    (i : ℕ) (hi : i ∈ g.cycleType) :
    Odd i := by
  rw [cycleType_def g, Multiset.mem_map] at hi
  obtain ⟨c, hc, rfl⟩ := hi
  rw [← Finset.mem_def] at hc
  suffices sign c = 1 by
    rw [IsCycle.sign _, neg_eq_iff_eq_neg, ← Int.units_ne_iff_eq_neg] at this
    · rw [← Nat.not_even_iff_odd, comp_apply]
      exact fun h ↦ this h.neg_one_pow
    · rw [mem_cycleFactorsFinset_iff] at hc
      exact hc.left
  apply h
  rw [Subgroup.mem_centralizer_singleton_iff]
  exact Equiv.Perm.self_mem_cycle_factors_commute hc

end Equiv.Perm.OnCycleFactors

namespace AlternatingGroup

open Nat Equiv.Perm.OnCycleFactors Equiv.Perm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b91ee73f7f677b9a856c9b8a1ae701dd568a791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
