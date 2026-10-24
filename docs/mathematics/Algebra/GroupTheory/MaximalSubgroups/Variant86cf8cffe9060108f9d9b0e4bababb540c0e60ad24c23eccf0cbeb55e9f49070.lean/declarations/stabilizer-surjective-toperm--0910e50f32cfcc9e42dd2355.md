# stabilizer.surjective_toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e24e492-7312-cd61-ab66-8ec163a2e2a4",
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
  "slug": "stabilizer-surjective-toperm--0910e50f32cfcc9e42dd2355",
  "source": {
    "blob": "682c52f8dab2283509e47bff294eae9c068f4f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0910e50f32cfcc9e42dd2355a5f7d4c5ffd12e3800dbeecf7a37cb9f566bb276",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e24e492-7312-cd61-ab66-8ec163a2e2a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–123.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant86cf8cffe9060108f9d9b0e4bababb540c0e60ad24c23eccf0cbeb55e9f49070.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682c52f8dab2283509e47bff294eae9c068f4f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
