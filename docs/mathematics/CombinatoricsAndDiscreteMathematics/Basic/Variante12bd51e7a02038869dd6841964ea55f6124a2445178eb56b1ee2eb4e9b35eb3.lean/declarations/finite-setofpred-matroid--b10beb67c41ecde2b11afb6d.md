# finite_setOfPred_matroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f87fa831-0c6e-6e39-83e1-caf39d7e6822",
  "kind": "theorem",
  "lexical_name": "finite_setOfPred_matroid",
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
  "slug": "finite-setofpred-matroid--b10beb67c41ecde2b11afb6d",
  "source": {
    "blob": "4d8b10ddceff4fc466b25719badbd13cf6f02d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1141,
    "line": 1125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b10beb67c41ecde2b11afb6d0c5ea7621488a0746edbb04d73074178dd1afd4a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f87fa831-0c6e-6e39-83e1-caf39d7e6822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1125–1141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_setOfPred_matroid {E : Set α} (hE : E.Finite) :
    {M : Matroid α | M.E ⊆ E}.Finite := by
  set f : Matroid α → Set α × (Set (Set α)) := fun M ↦ ⟨M.E, {B | M.IsBase B}⟩
  have hf : f.Injective := by
    refine fun M M' hMM' ↦ ?_
    rw [Prod.mk.injEq, and_comm, Set.ext_iff, and_comm] at hMM'
    exact ext_isBase hMM'.1 (fun B _ ↦ hMM'.2 B)
  rw [← Set.finite_image_iff hf.injOn]
  refine (hE.finite_subsets.prod hE.finite_subsets.finite_subsets).subset ?_
  rintro _ ⟨M, hE : M.E ⊆ E, rfl⟩
  simp only [Set.mem_prod, Set.mem_ofPred_eq]
  exact ⟨hE, fun B hB ↦ hB.subset_ground.trans hE⟩

@[deprecated (since := "2026-07-09")]
alias finite_setOf_matroid := finite_setOfPred_matroid

/-- For finite `E`, finitely many matroids have ground set `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean#L1125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8b10ddceff4fc466b25719badbd13cf6f02d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
