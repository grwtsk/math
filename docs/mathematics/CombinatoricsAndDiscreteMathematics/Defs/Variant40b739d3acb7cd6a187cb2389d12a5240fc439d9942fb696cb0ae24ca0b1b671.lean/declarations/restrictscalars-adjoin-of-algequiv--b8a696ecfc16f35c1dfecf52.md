# restrictScalars_adjoin_of_algEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c5af894-f8aa-c18f-2cc0-c58672e13acd",
  "kind": "theorem",
  "lexical_name": "restrictScalars_adjoin_of_algEquiv",
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
  "slug": "restrictscalars-adjoin-of-algequiv--b8a696ecfc16f35c1dfecf52",
  "source": {
    "blob": "ac6423e7967599e0afb376c2c40de2dc91d79817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 447,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a696ecfc16f35c1dfecf526b3d6fa1cc5b5c8052b7b6561f16516530eefc89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c5af894-f8aa-c18f-2cc0-c58672e13acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictScalars_adjoin_of_algEquiv
    {L L' : Type*} [Field L] [Field L']
    [Algebra F L] [Algebra L E] [Algebra F L'] [Algebra L' E]
    [IsScalarTower F L E] [IsScalarTower F L' E] (i : L ≃ₐ[F] L')
    (hi : algebraMap L E = (algebraMap L' E) ∘ i) (S : Set E) :
    (adjoin L S).restrictScalars F = (adjoin L' S).restrictScalars F := by
  apply_fun toSubfield using (fun K K' h ↦ by
    ext x; change x ∈ K.toSubfield ↔ x ∈ K'.toSubfield; rw [h])
  change Subfield.closure _ = Subfield.closure _
  congr
  ext x
  exact ⟨fun ⟨y, h⟩ ↦ ⟨i y, by rw [← h, hi]; rfl⟩,
    fun ⟨y, h⟩ ↦ ⟨i.symm y, by rw [← h, hi, Function.comp_apply, AlgEquiv.apply_symm_apply]⟩⟩

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant40b739d3acb7cd6a187cb2389d12a5240fc439d9942fb696cb0ae24ca0b1b671.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6423e7967599e0afb376c2c40de2dc91d79817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
