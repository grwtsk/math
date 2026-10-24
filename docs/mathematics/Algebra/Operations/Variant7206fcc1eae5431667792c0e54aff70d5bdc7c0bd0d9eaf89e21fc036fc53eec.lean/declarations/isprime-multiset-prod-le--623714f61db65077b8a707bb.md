# IsPrime.multiset_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e5330a0-8267-f360-2227-8f47a1b0570f",
  "kind": "theorem",
  "lexical_name": "IsPrime.multiset_prod_le",
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
  "slug": "isprime-multiset-prod-le--623714f61db65077b8a707bb",
  "source": {
    "blob": "d93bb8daa13aa4395647185dd4aa01fbafca6654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1062,
    "line": 1043,
    "path": "GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:623714f61db65077b8a707bb9222d1a9598d2b950eea60c2f3f7c8b5a3a3ab54",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5330a0-8267-f360-2227-8f47a1b0570f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1043–1062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrime.multiset_prod_le {s : Multiset (Ideal R)} {P : Ideal R} (hp : IsPrime P)
    (hne : s ≠ 0) : s.prod ≤ P ↔ ∃ I ∈ s, I ≤ P := by
  suffices s.prod ≤ P → ∃ I ∈ s, I ≤ P from
    ⟨this, fun ⟨i, his, hip⟩ => le_trans multiset_prod_le_inf <| le_trans (Multiset.inf_le his) hip⟩
  classical
    obtain ⟨b, hb⟩ : ∃ b, b ∈ s := Multiset.exists_mem_of_ne_zero hne
    obtain ⟨t, rfl⟩ : ∃ t, s = b ::ₘ t
    exact ⟨s.erase b, (Multiset.cons_erase hb).symm⟩
    refine' t.induction_on _ _
    · simp only [exists_prop, Multiset.cons_zero, Multiset.prod_singleton, Multiset.mem_singleton,
        exists_eq_left, imp_self]
    intro a s ih h
    rw [Multiset.cons_swap, Multiset.prod_cons, hp.mul_le] at h
    rw [Multiset.cons_swap]
    cases' h with h h
    · exact ⟨a, Multiset.mem_cons_self a _, h⟩
    obtain ⟨I, hI, ih⟩ : ∃ I ∈ b ::ₘ s, I ≤ P := ih h
    exact ⟨I, Multiset.mem_cons_of_mem hI, ih⟩
#align ideal.is_prime.multiset_prod_le Ideal.IsPrime.multiset_prod_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean#L1043).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93bb8daa13aa4395647185dd4aa01fbafca6654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
