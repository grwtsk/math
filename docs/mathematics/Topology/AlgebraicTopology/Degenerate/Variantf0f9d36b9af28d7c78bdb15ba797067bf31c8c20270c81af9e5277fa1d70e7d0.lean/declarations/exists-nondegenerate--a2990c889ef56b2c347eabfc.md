# exists_nonDegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56c4066d-3b32-97ab-2769-67459350574a",
  "kind": "lemma",
  "lexical_name": "exists_nonDegenerate",
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
  "slug": "exists-nondegenerate--a2990c889ef56b2c347eabfc",
  "source": {
    "blob": "66ef84ab563612250a8ddbfef67312c75b0fa49f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2990c889ef56b2c347eabfc1566fe6d86c2f643200eddf0d2623196999913db",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56c4066d-3b32-97ab-2769-67459350574a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nonDegenerate (x : X _⦋n⦌) :
    ∃ (m : ℕ) (f : ⦋n⦌ ⟶ ⦋m⦌) (_ : Epi f)
      (y : X.nonDegenerate m), x = X.map f.op y := by
  induction n with
  | zero =>
      exact ⟨0, 𝟙 _, inferInstance, ⟨x, by simp⟩, by simp⟩
  | succ n hn =>
      by_cases hx : x ∈ X.nonDegenerate (n + 1)
      · exact ⟨n + 1, 𝟙 _, inferInstance, ⟨x, hx⟩, by simp⟩
      · simp only [← mem_degenerate_iff_notMem_nonDegenerate,
          degenerate_eq_iUnion_range_σ, Set.mem_iUnion, Set.mem_range] at hx
        obtain ⟨i, y, rfl⟩ := hx
        obtain ⟨m, f, hf, z, rfl⟩ := hn y
        exact ⟨_, SimplexCategory.σ i ≫ f, inferInstance, z, by simp; rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ef84ab563612250a8ddbfef67312c75b0fa49f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
