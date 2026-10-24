# productTest_candidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f38f329-8479-a485-9600-4f79a0b8147b",
  "kind": "theorem",
  "lexical_name": "productTest_candidate",
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
  "slug": "producttest-candidate--e8b5362131a6eec0d010cba2",
  "source": {
    "blob": "f8ecb028805fc8aa52ad34c0926a29e1f914b643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant780a3776670ec257fabc6151e6ca5f79eadd52b40ac569b84ca08f92c05095a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b5362131a6eec0d010cba2f7704e805cfc9ad897e9662f8baa1c4c34914b66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant780a3776670ec257fabc6151e6ca5f79eadd52b40ac569b84ca08f92c05095a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f38f329-8479-a485-9600-4f79a0b8147b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productTest_candidate (hw : SystemWeaklyNormalizing P)
    {D E : Expr S} {A : Set (Expr S)} {Cs : Expr S → Set (Set (Expr S))}
    (hA : A ⊆ Top Ω D)
    (hCs : ∀ n ∈ A, ∀ C ∈ Cs n, IsCandidate Ω (E.instantiate n).normalForm C) :
    IsCandidate Ω (.pi D E) (ProductTest Ω D E A Cs) where
  lower := by
    intro M h
    refine ⟨ground_le_top h, ?_⟩
    intro n hn C hC
    exact (hCs n hn C hC).lower (ground_application hw h (hA hn))
  upper := fun _ h => h.1
  expansion := by
    intro D' b a ns ht hD hb ha hns hc
    refine ⟨⟨ht, StronglyNormalizing.head_expansion hD hb ha hns hc.1.2⟩, ?_⟩
    intro n hn C hC
    have ht' := (ht.application (hA hn).1).normalize_type hw
    have hsn : StronglyNormalizingArgs (ns ++ [n]) := by
      apply StronglyNormalizingArgs.of_forall
      intro x hx
      rcases List.mem_append.mp hx with hx | hx
      · exact hns.of_mem hx
      · have he : x = n := List.mem_singleton.mp hx
        exact he.symm ▸ (hA hn).2
    have hc' := hc.2 n hn C hC
    have he : (Expr.app (.lam D' b) a).apps (ns ++ [n]) =
        .app ((Expr.app (.lam D' b) a).apps ns) n := by
      simp only [Expr.apps_append, Expr.apps]
    have he' : (b.instantiate a).apps (ns ++ [n]) = .app ((b.instantiate a).apps ns) n := by
      simp only [Expr.apps_append, Expr.apps]
    rw [← he] at ht'
    rw [← he'] at hc'
    rw [← he]
    exact (hCs n hn C hC).expansion D' b a (ns ++ [n]) ht' hD hb ha hsn hc'

end Candidates

end PureTypeSystem

namespace PureTypeSystem.Candidates
universe u
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) (T : Expr S)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant780a3776670ec257fabc6151e6ca5f79eadd52b40ac569b84ca08f92c05095a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant780a3776670ec257fabc6151e6ca5f79eadd52b40ac569b84ca08f92c05095a9.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ecb028805fc8aa52ad34c0926a29e1f914b643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
