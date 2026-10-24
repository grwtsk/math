# exists_of_compat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e738f717-0fd1-ceba-4340-25afe9980c94",
  "kind": "theorem",
  "lexical_name": "exists_of_compat",
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
  "slug": "exists-of-compat--da2ecd7588b0abafdf658a7d",
  "source": {
    "blob": "93ec2ac80c2ce785765bad173d85844e2b3390ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da2ecd7588b0abafdf658a7d4e37ed57f7bd92a2b1aa73d6fc79018c0edf66a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e738f717-0fd1-ceba-4340-25afe9980c94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_compat [CompactSpace X] (Qs : (Q : DiscreteQuotient X) → Q)
    (compat : ∀ (A B : DiscreteQuotient X) (h : A ≤ B), ofLE h (Qs _) = Qs _) :
    ∃ x : X, ∀ Q : DiscreteQuotient X, Q.proj x = Qs _ := by
  have H₁ : ∀ Q₁ Q₂, Q₁ ≤ Q₂ → proj Q₁ ⁻¹' {Qs Q₁} ⊆ proj Q₂ ⁻¹' {Qs Q₂} := fun _ _ h => by
    rw [← compat _ _ h]
    exact fiber_subset_ofLE _ _
  obtain ⟨x, hx⟩ : Set.Nonempty (⋂ Q, proj Q ⁻¹' {Qs Q}) :=
    IsCompact.nonempty_iInter_of_directed_nonempty_compact_closed
      (fun Q : DiscreteQuotient X => Q.proj ⁻¹' {Qs _}) (directed_of_inf H₁)
      (fun Q => (singleton_nonempty _).preimage Q.proj_surjective)
      (fun Q => (Q.isClosed_preimage {Qs _}).isCompact) fun Q => Q.isClosed_preimage _
  exact ⟨x, mem_iInter.1 hx⟩
#align discrete_quotient.exists_of_compat DiscreteQuotient.exists_of_compat

/-- If `X` is a compact space, then any discrete quotient of `X` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ec2ac80c2ce785765bad173d85844e2b3390ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
