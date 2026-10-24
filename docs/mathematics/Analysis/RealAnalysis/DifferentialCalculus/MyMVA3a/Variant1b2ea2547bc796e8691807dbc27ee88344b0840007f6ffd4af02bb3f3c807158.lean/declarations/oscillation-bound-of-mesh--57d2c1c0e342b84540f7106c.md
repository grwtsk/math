# oscillation_bound_of_mesh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1075,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9fdfbe9-6e7b-2b86-c67b-132db3073958",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afeeed5f-ddd0-6e50-5d1e-841e0059e750",
  "kind": "lemma",
  "lexical_name": "oscillation_bound_of_mesh",
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
  "slug": "oscillation-bound-of-mesh--57d2c1c0e342b84540f7106c",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1105,
    "line": 1075,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d2c1c0e342b84540f7106c7f1545743072f43cc6887c29642c421d018bb6ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afeeed5f-ddd0-6e50-5d1e-841e0059e750`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma oscillation_bound_of_mesh {f : ℝ → ℝ} {a b : ℝ} {ε δ : ℝ}
    (P : TaggedPartition a b)
    (h_mesh : P.mesh ≤ δ)
    (h_unif : ∀ x y, x ∈ Set.Icc a b → y ∈ Set.Icc a b → |x - y| ≤ δ → |f x - f y| ≤ ε) :
    ∀ i : Fin P.n, ∀ x ∈ Set.Icc (P.x i.castSucc) (P.x i.succ), |f (P.xi i) - f x| ≤ ε := by
      intros i x hx
      have h_dist : |P.xi i - x| ≤ P.mesh := by
        -- By definition of mesh, we know that for any $i$, $|P.x i - P.x (i + 1)| \leq P.mesh$.
        have h_mesh_le : ∀ i : Fin P.n, |P.x (i.castSucc) - P.x (i.succ)| ≤ P.mesh := by
          intro i
          have h_diff_le_mesh : ∀ i : Fin P.n, P.x i.succ - P.x i.castSucc ≤ P.mesh := by
            intro i
            have h_diff_le_mesh : P.x i.succ - P.x i.castSucc ∈ Finset.image (fun i => P.x i.succ - P.x i.castSucc) (Finset.univ : Finset (Fin P.n)) := by
              exact Finset.mem_image_of_mem _ ( Finset.mem_univ _ );
            have h_diff_le_mesh : ∀ y ∈ Finset.image (fun i => P.x i.succ - P.x i.castSucc) (Finset.univ : Finset (Fin P.n)), y ≤ P.mesh := by
              intros y hy
              have h_diff_le_mesh : y ≤ Finset.max (Finset.image (fun i => P.x i.succ - P.x i.castSucc) (Finset.univ : Finset (Fin P.n))) := by
                exact Finset.le_max hy;
              rw [ show P.mesh = ( Finset.image ( fun i : Fin P.n => P.x i.succ - P.x i.castSucc ) Finset.univ ).max.getD 0 from ?_ ];
              · cases h : Finset.max ( Finset.image ( fun i : Fin P.n => P.x i.succ - P.x i.castSucc ) Finset.univ ) <;> aesop;
              · exact rfl
            exact h_diff_le_mesh _ ‹_›;
          rw [ abs_sub_comm, abs_of_nonneg ] <;> linarith [ h_diff_le_mesh i, P.monotone ( show i.castSucc ≤ i.succ from Nat.le_succ _ ) ];
        exact abs_le.mpr ⟨ by linarith [ abs_le.mp ( h_mesh_le i ), P.h_xi i, hx.1, hx.2 ], by linarith [ abs_le.mp ( h_mesh_le i ), P.h_xi i, hx.1, hx.2 ] ⟩;
      apply h_unif _ _ ?_ ?_ <| h_dist.trans h_mesh;
      · exact ⟨ by linarith [ P.h_xi i, P.left, P.right, P.monotone ( show 0 ≤ Fin.castSucc i from Nat.zero_le _ ) ], by linarith [ P.h_xi i, P.left, P.right, P.monotone ( show Fin.succ i ≤ Fin.last P.n from Fin.le_last _ ) ] ⟩;
      · exact ⟨ by linarith [ hx.1, P.monotone ( show 0 ≤ Fin.castSucc i from Nat.zero_le _ ), P.left ], by linarith [ hx.2, P.monotone ( show Fin.succ i ≤ Fin.last P.n from Fin.le_last _ ), P.right ] ⟩

/-
If f is continuous and g has bounded variation, the Riemann-Stieltjes sums satisfy the Cauchy condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
