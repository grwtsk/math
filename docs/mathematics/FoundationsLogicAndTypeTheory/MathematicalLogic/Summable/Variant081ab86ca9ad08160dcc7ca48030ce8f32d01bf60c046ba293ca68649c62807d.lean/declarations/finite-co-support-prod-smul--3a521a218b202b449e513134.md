# finite_co_support_prod_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "682ee3b5347fbcc173c8471955ed7031006956e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1539b29-c9ee-c261-f162-b162714e915f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34bc1e0f-5b50-b561-c3ab-96aff4bd0982",
  "kind": "theorem",
  "lexical_name": "finite_co_support_prod_smul",
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
  "slug": "finite-co-support-prod-smul--3a521a218b202b449e513134",
  "source": {
    "blob": "682ee3b5347fbcc173c8471955ed7031006956e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 415,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a521a218b202b449e5131343bca4ae55107f9245d06be3a3c6d49fdfe6c64f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34bc1e0f-5b50-b561-c3ab-96aff4bd0982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_co_support_prod_smul (s : SummableFamily Γ R α)
    (t : SummableFamily Γ' V β) (g : Γ') :
    Finite {(ab : α × β) |
      ((fun (ab : α × β) ↦ (of R).symm (s ab.1 • (of R) (t ab.2))) ab).coeff g ≠ 0} := by
  apply ((VAddAntidiagonal g (Set.VAddAntidiagonal.finite_of_isPWO s.isPWO_iUnion_support
    t.isPWO_iUnion_support g)).finite_toSet.biUnion'
    (fun gh _ => hasFiniteSupport_smul s t gh)).subset _
  exact fun ab hab => by
    simp only [ne_eq, Set.mem_ofPred_eq] at hab
    obtain ⟨ij, hij⟩ := Finset.exists_ne_zero_of_sum_ne_zero hab
    simp only [mem_coe, mem_vaddAntidiagonal, Set.mem_iUnion, mem_support, ne_eq,
      Function.mem_support, exists_prop, Prod.exists]
    exact ⟨ij.1, ij.2, ⟨⟨ab.1, left_ne_zero_of_smul hij.2⟩, ⟨ab.2, right_ne_zero_of_smul hij.2⟩,
      ((mem_vaddAntidiagonal _ _).mp hij.1).2.2⟩, hij.2⟩

/-- An elementwise scalar multiplication of one summable family on another. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682ee3b5347fbcc173c8471955ed7031006956e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
