# Fintype.linearIndependent_iffₒₛ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fcfc6aa-19a3-4b51-c290-9bbdea1da993",
  "kind": "theorem",
  "lexical_name": "Fintype.linearIndependent_iffₒₛ",
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
  "slug": "fintype-linearindependent-iff--bfdbd21f1e1e585d3c17b4b8",
  "source": {
    "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 638,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfdbd21f1e1e585d3c17b4b83f8ee577e094c98c448cabce4622d200bf36d5ad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fcfc6aa-19a3-4b51-c290-9bbdea1da993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem Fintype.linearIndependent_iffₒₛ [DecidableEq ι] [Fintype ι] :
    LinearIndependent R v ↔ ∀ t, ∀ (f : ι → R),
      ∑ i ∈ t, f i • v i = ∑ i ∉ t, f i • v i → ∀ i, f i = 0 := by
  rw [linearIndependent_iffₒₛ]
  refine ⟨fun h t f heq i => ?_, fun h t₁ t₂ f ht₁t₂ heq => ?_⟩
  · specialize h t tᶜ f disjoint_compl_right heq
    by_cases hi : i ∈ t
    · exact h.1 i hi
    · exact h.2 i (Finset.mem_compl.2 hi)
  · specialize h t₁ (fun i => if i ∈ t₁ ∨ i ∈ t₂ then f i else 0) ?_
    · rw [← Finset.sum_subset ht₁t₂.le_compl_left]
      · convert! heq using 2 with i hi i hi <;> simp [hi]
      · intro i hi hi'
        simp [Finset.mem_compl.1 hi, hi']
    refine ⟨fun i hi => ?_, fun i hi => ?_⟩ <;> simpa [hi] using h i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
