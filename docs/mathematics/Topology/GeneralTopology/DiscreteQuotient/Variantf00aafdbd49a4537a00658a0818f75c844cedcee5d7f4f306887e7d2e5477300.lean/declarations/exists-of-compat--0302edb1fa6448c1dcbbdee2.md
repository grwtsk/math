# exists_of_compat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0be2fc6-a1e7-7a37-4445-6947b28338e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6e9e709-9d02-5978-4ecb-2fbc6deb2f1c",
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
  "slug": "exists-of-compat--0302edb1fa6448c1dcbbdee2",
  "source": {
    "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 379,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0302edb1fa6448c1dcbbdee2c71c422f5189947bd3814742c3efe0b216a099ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6e9e709-9d02-5978-4ecb-2fbc6deb2f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–393.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e75a4555647a415020a6d4dd96ddcebd429269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
