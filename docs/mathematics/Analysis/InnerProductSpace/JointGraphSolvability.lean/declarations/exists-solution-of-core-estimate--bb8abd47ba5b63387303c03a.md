# exists_solution_of_core_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35d4e15d-7052-b34c-e67f-fb3d9bf17899",
  "kind": "theorem",
  "lexical_name": "exists_solution_of_core_estimate",
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
  "slug": "exists-solution-of-core-estimate--bb8abd47ba5b63387303c03a",
  "source": {
    "blob": "57f14941a4522e9ea77f804b69d33687f4f5fbbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 46,
    "path": "GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb8abd47ba5b63387303c03ae908d4795540191d61f4648d6b1bf7fe906b0e07",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d4e15d-7052-b34c-e67f-fb3d9bf17899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_solution_of_core_estimate
    (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H)
    (hT : Dense (T.domain : Set E)) (hTc : T.IsClosed) (hSc : S.IsClosed)
    (hcomplex : ∀ x : T.domain, (T x, 0) ∈ S.graph)
    (D : Set (jointGraph T S)) (hD : Dense D)
    {ε : ℝ} (hε : 0 < ε)
    (hestimate : ∀ v ∈ D,
      ε * ‖v.val.1‖ ^ 2 ≤ ‖v.val.2.1‖ ^ 2 + ‖v.val.2.2‖ ^ 2)
    {f : F} (hf : (f, 0) ∈ S.graph) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ ‖f‖ / Real.sqrt ε := by
  apply exists_solution_of_complex_estimate T S hT hTc hSc hcomplex hε _ hf
  intro v hv
  let p : jointGraph T S := ⟨((v : F), T† v, S ⟨(v : F), hv⟩),
    T†.mem_graph_iff.mpr ⟨v, rfl, rfl⟩,
    S.mem_graph_iff.mpr ⟨⟨(v : F), hv⟩, rfl, rfl⟩⟩
  have hc : IsClosed {w : jointGraph T S |
      ε * ‖w.val.1‖ ^ 2 ≤ ‖w.val.2.1‖ ^ 2 + ‖w.val.2.2‖ ^ 2} := by
    apply isClosed_le <;> fun_prop
  exact (closure_minimal hestimate hc) (hD p)

end

end GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f14941a4522e9ea77f804b69d33687f4f5fbbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
