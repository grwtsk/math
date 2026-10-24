# convexOn_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa2bf8ae-31b1-e752-ca7a-0039c6549346",
  "kind": "lemma",
  "lexical_name": "convexOn_zpow",
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
  "slug": "convexon-zpow--b5e6a977ebf4ae7abf454e71",
  "source": {
    "blob": "96fb5156858fa97e75178b356eb8d2beed8801f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 180,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e6a977ebf4ae7abf454e713aea1df0b6aa336fb553b46662c5079731be78aa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa2bf8ae-31b1-e752-ca7a-0039c6549346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convexOn_zpow : ∀ n : ℤ, ConvexOn 𝕜 (Ioi 0) fun x : 𝕜 ↦ x ^ n
  | (n : ℕ) => by
    simp_rw [zpow_natCast]
    exact (convexOn_pow n).subset Ioi_subset_Ici_self (convex_Ioi _)
  | -[n+1] => by
    simp_rw [zpow_negSucc, ← inv_pow]
    refine (convexOn_iff_forall_pos.2 ⟨convex_Ioi _, ?_⟩).pow (fun x (hx : 0 < x) ↦ by positivity) _
    rintro x (hx : 0 < x) y (hy : 0 < y) a b ha hb hab
    field_simp
    rw [div_le_div_iff₀, ← sub_nonneg]
    · calc
        0 ≤ a * b * (x - y) ^ 2 := by positivity
        _ = _ := by obtain rfl := eq_sub_of_add_eq hab; ring
    all_goals positivity

end LinearOrderedField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fb5156858fa97e75178b356eb8d2beed8801f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
