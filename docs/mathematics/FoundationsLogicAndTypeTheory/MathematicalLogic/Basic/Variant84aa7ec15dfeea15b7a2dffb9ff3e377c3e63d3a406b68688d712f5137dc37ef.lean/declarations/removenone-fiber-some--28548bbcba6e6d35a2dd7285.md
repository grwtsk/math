# RemoveNone.fiber_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36f6a28fd3bc1167ca2a34c193beccbe0808be97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a406430-4c06-b0e5-d8fb-b7ec9a70eb5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4510215-7024-8aca-c9d4-c4a7aa63b8fd",
  "kind": "theorem",
  "lexical_name": "RemoveNone.fiber_some",
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
  "slug": "removenone-fiber-some--28548bbcba6e6d35a2dd7285",
  "source": {
    "blob": "36f6a28fd3bc1167ca2a34c193beccbe0808be97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28548bbcba6e6d35a2dd72857fd6cb0a42b52206ab848b9126a65fc6714e3479",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4510215-7024-8aca-c9d4-c4a7aa63b8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RemoveNone.fiber_some (a : α) :
    RemoveNone.fiber (some a) = { f : Perm α | fixedPoints f ⊆ {a} } := by
  ext f
  constructor
  · rw [RemoveNone.mem_fiber]
    rintro ⟨F, F_derangement, F_none, rfl⟩ x x_fixed
    rw [mem_fixedPoints_iff] at x_fixed
    apply_fun some at x_fixed
    rcases Fx : F (some x) with - | y
    · rwa [removeNone_none F Fx, F_none, Option.some_inj, eq_comm] at x_fixed
    · exfalso
      rw [removeNone_some F ⟨y, Fx⟩] at x_fixed
      exact F_derangement _ x_fixed
  · intro h_opfp
    use Equiv.Perm.decomposeOption.symm (some a, f)
    constructor
    · intro x
      apply_fun fun x => Equiv.swap none (some a) x
      simp only [Perm.decomposeOption_symm_apply, swap_apply_self, Perm.coe_mul]
      rcases x with - | x
      · simp
      simp only [comp, optionCongr_apply, Option.map_some, swap_apply_self]
      by_cases x_vs_a : x = a
      · rw [x_vs_a, swap_apply_right]
        apply Option.some_ne_none
      have ne_1 : some x ≠ none := Option.some_ne_none _
      have ne_2 : some x ≠ some a := (Option.some_injective α).ne_iff.mpr x_vs_a
      rw [swap_apply_of_ne_of_ne ne_1 ne_2, (Option.some_injective α).ne_iff]
      intro contra
      exact x_vs_a (h_opfp contra)
    · rw [apply_symm_apply]

end Equiv

section Option

variable [DecidableEq α]

/-- The set of derangements on `Option α` is equivalent to the union over `a : α`
    of "permutations with `a` the only possible fixed point". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f6a28fd3bc1167ca2a34c193beccbe0808be97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
