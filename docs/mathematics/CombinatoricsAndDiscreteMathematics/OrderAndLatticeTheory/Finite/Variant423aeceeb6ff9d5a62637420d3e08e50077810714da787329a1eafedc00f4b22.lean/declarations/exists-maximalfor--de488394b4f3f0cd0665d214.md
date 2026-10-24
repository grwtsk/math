# exists_maximalFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc0497be-999a-cd8f-81ea-71a25982066b",
  "kind": "lemma",
  "lexical_name": "exists_maximalFor",
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
  "slug": "exists-maximalfor--de488394b4f3f0cd0665d214",
  "source": {
    "blob": "b4d75696978917b1487b8c2658bfaec2d60dff99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant423aeceeb6ff9d5a62637420d3e08e50077810714da787329a1eafedc00f4b22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de488394b4f3f0cd0665d21416d9f0e668025cbf9102be84e01e4b3289725454",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant423aeceeb6ff9d5a62637420d3e08e50077810714da787329a1eafedc00f4b22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc0497be-999a-cd8f-81ea-71a25982066b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_maximalFor (f : ι → α) (s : Finset ι) (hs : s.Nonempty) :
    ∃ i, MaximalFor (· ∈ s) f i := by
  induction hs using Finset.Nonempty.cons_induction with
  | singleton i => exact ⟨i, by simp⟩
  | @cons i s hi hs ih =>
    obtain ⟨j, hj⟩ := ih
    by_cases hji : f j ≤ f i
    · refine ⟨i, mem_cons_self .., ?_⟩
      simp only [mem_cons, forall_eq_or_imp, imp_self, true_and]
      exact fun k hk hik ↦ _root_.trans (hj.2 hk <| _root_.trans hji hik) hji
    · exact ⟨j, mem_cons_of_mem hj.1, by simpa [hji] using hj.2⟩

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant423aeceeb6ff9d5a62637420d3e08e50077810714da787329a1eafedc00f4b22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant423aeceeb6ff9d5a62637420d3e08e50077810714da787329a1eafedc00f4b22.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d75696978917b1487b8c2658bfaec2d60dff99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
