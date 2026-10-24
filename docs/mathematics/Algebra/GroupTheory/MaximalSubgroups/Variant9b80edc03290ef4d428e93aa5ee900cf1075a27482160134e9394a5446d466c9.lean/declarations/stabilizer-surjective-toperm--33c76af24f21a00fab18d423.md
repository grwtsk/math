# stabilizer.surjective_toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da62cef1-a2eb-f883-645b-6a7d375126d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fd97b87-9924-5b26-426e-be7b5ad62891",
  "kind": "theorem",
  "lexical_name": "stabilizer.surjective_toPerm",
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
  "slug": "stabilizer-surjective-toperm--33c76af24f21a00fab18d423",
  "source": {
    "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 82,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c76af24f21a00fab18d423482861cd0c9bc2469649050bd92936c2e8ef178d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fd97b87-9924-5b26-426e-be7b5ad62891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilizer.surjective_toPerm {s : Set α} (hs : sᶜ.Nontrivial) :
    Function.Surjective (toPerm : stabilizer (alternatingGroup α) s → Perm s) := by
  classical
  have : ∃ k : Perm α, IsSwap k ∧ _root_.Disjoint s k.support := by
    obtain ⟨a, ha, b, hb, hab⟩ := hs
    use Equiv.swap a b
    rw [swap_isSwap_iff]; aesop
  obtain ⟨k, hk_swap, hk_support⟩ := this
  have hks : k • s = s := by
    rw [← mem_stabilizer_iff, mem_stabilizer_set_iff_smul_set_subset s.toFinite]
    intro _
    simp only [mem_smul_set]
    rintro ⟨x, hx, rfl⟩
    convert! hx
    rw [Perm.smul_def, ← Perm.notMem_support]
    exact (Set.disjoint_left.mp hk_support) hx
  intro g
  rcases Int.units_eq_one_or (sign g) with hsg | hsg
  · use! Equiv.Perm.ofSubtype g
    · simp [mem_alternatingGroup, hsg]
    · rw [mem_stabilizer_iff, Submonoid.mk_smul]
      exact ofSubtype_mem_stabilizer g
    · aesop
  · use! Equiv.Perm.ofSubtype g * k
    · simp [mem_alternatingGroup, hk_swap.sign_eq, hsg]
    · rw [mem_stabilizer_iff, Submonoid.mk_smul, mul_smul, hks, ofSubtype_mem_stabilizer]
    · ext x
      suffices k x = x by simp [this]
      rw [Set.disjoint_left] at hk_support
      rw [← notMem_support]
      exact hk_support x.prop

/-- In the alternating group, the stabilizer of a set acts
primitively on that set if the complement is nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a8d377fd703de2e88b733fc1ec376a693e1fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
