# linearIndependent_stdBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca0fbee9ef294b28199b942bbbc15c260428a8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9458c85-246b-c06e-1cc3-9cc614e89a95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f7d4b89-94da-9b68-f2ea-296fa658adda",
  "kind": "theorem",
  "lexical_name": "linearIndependent_stdBasis",
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
  "slug": "linearindependent-stdbasis--002aae296803ddaf6e898af2",
  "source": {
    "blob": "ca0fbee9ef294b28199b942bbbc15c260428a8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:002aae296803ddaf6e898af22fb6405debcf330c7b610c8c6e387f1b651a54ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f7d4b89-94da-9b68-f2ea-296fa658adda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_stdBasis [Ring R] [∀ i, AddCommGroup (Ms i)] [∀ i, Module R (Ms i)]
    [DecidableEq η] (v : ∀ j, ιs j → Ms j) (hs : ∀ i, LinearIndependent R (v i)) :
    LinearIndependent R fun ji : Σj, ιs j => stdBasis R Ms ji.1 (v ji.1 ji.2) := by
  have hs' : ∀ j : η, LinearIndependent R fun i : ιs j => stdBasis R Ms j (v j i) := by
    intro j
    exact (hs j).map' _ (ker_stdBasis _ _ _)
  apply linearIndependent_iUnion_finite hs'
  · intro j J _ hiJ
    simp only
    have h₀ :
      ∀ j, span R (range fun i : ιs j => stdBasis R Ms j (v j i)) ≤
        LinearMap.range (stdBasis R Ms j) := by
      intro j
      rw [span_le, LinearMap.range_coe]
      apply range_comp_subset_range
    have h₁ :
      span R (range fun i : ιs j => stdBasis R Ms j (v j i)) ≤
        ⨆ i ∈ ({j} : Set _), LinearMap.range (stdBasis R Ms i) := by
      rw [@iSup_singleton _ _ _ fun i => LinearMap.range (stdBasis R (Ms) i)]
      apply h₀
    have h₂ :
      ⨆ j ∈ J, span R (range fun i : ιs j => stdBasis R Ms j (v j i)) ≤
        ⨆ j ∈ J, LinearMap.range (stdBasis R (fun j : η => Ms j) j) :=
      iSup₂_mono fun i _ => h₀ i
    have h₃ : Disjoint (fun i : η => i ∈ ({j} : Set _)) J := by
      convert Set.disjoint_singleton_left.2 hiJ using 0
    exact (disjoint_stdBasis_stdBasis _ _ _ _ h₃).mono h₁ h₂
#align pi.linear_independent_std_basis Pi.linearIndependent_stdBasis

variable [Semiring R] [∀ i, AddCommMonoid (Ms i)] [∀ i, Module R (Ms i)]

variable [Fintype η]

section

open LinearEquiv

/-- `Pi.basis (s : ∀ j, Basis (ιs j) R (Ms j))` is the `Σ j, ιs j`-indexed basis on `Π j, Ms j`
given by `s j` on each component.

For the standard basis over `R` on the finite-dimensional space `η → R` see `Pi.basisFun`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0fbee9ef294b28199b942bbbc15c260428a8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
