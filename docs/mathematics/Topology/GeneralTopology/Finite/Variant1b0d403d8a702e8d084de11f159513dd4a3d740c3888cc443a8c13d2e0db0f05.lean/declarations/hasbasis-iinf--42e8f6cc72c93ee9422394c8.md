# HasBasis.iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3cd5287-b93f-3220-5817-f0dba72ae4e3",
  "kind": "theorem",
  "lexical_name": "HasBasis.iInf",
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
  "slug": "hasbasis-iinf--42e8f6cc72c93ee9422394c8",
  "source": {
    "blob": "fad067a06ac0be24e0d077ac4fe05bbbef03a410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42e8f6cc72c93ee9422394c87c2a8c7f71b4c610e387a06425b6e3ab8acb7672",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3cd5287-b93f-3220-5817-f0dba72ae4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem HasBasis.iInf {ι : Type*} {ι' : ι → Type*} {l : ι → Filter α}
    {p : ∀ i, ι' i → Prop} {s : ∀ i, ι' i → Set α} (hl : ∀ i, (l i).HasBasis (p i) (s i)) :
    (⨅ i, l i).HasBasis
      (fun If : Σ I : Set ι, ∀ i : I, ι' i => If.1.Finite ∧ ∀ i : If.1, p i (If.2 i)) fun If =>
      ⋂ i : If.1, s i (If.2 i) := by
  refine ⟨fun t => ⟨fun ht => ?_, ?_⟩⟩
  · rcases (HasBasis.iInf' hl).mem_iff.mp ht with ⟨⟨I, f⟩, ⟨hI, hf⟩, hsub⟩
    exact ⟨⟨I, fun i => f i⟩, ⟨hI, Subtype.forall.mpr hf⟩, trans (iInter_subtype _ _) hsub⟩
  · rintro ⟨⟨I, f⟩, ⟨hI, hf⟩, hsub⟩
    refine mem_of_superset ?_ hsub
    cases hI.nonempty_fintype
    exact iInter_mem.2 fun i => mem_iInf_of_mem ↑i <| (hl i).mem_of_mem <| hf _

@[deprecated (since := "2025-05-05")]
alias hasBasis_iInf := HasBasis.iInf

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad067a06ac0be24e0d077ac4fe05bbbef03a410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
