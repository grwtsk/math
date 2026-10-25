# targetQuotient_factor_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fde4789-24ce-1655-9f1b-43477bd6c0e0",
  "kind": "theorem",
  "lexical_name": "targetQuotient_factor_of_surjective",
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
  "slug": "targetquotient-factor-of-surjective--524f2d894b03f2dc7c9e7f0c",
  "source": {
    "blob": "0ac39e1a62aa3c7a4c3ada39a61f4f435643a456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:524f2d894b03f2dc7c9e7f0c2c367110126d8e182dc3b928fae65fa962494f17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fde4789-24ce-1655-9f1b-43477bd6c0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetQuotient_factor_of_surjective (targets : TargetFamily.{u, v} X)
    {Q : Type w} (q : X → Q) (onto : Function.Surjective q)
    (preserves : ∀ i, RecoverableFrom q (targets.value i)) :
    ∃! factor : Q → TargetQuotient targets, ∀ x, factor (q x) = targetClass targets x := by
  let equivalence := Setoid.quotientKerEquivOfSurjective q onto
  let factor := targetFactor targets q preserves ∘ equivalence.symm
  have agrees : ∀ x, factor (q x) = targetClass targets x := by
    intro x
    have inverse : equivalence.symm (q x) = Quotient.mk (Setoid.ker q) x := by
      apply equivalence.injective
      rw [Equiv.apply_symm_apply]
      rfl
    change targetFactor targets q preserves (equivalence.symm (q x)) = _
    rw [inverse]
    rfl
  refine ⟨factor, agrees, ?_⟩
  intro other otherAgrees
  funext value
  obtain ⟨x, rfl⟩ := onto value
  exact (otherAgrees x).trans (agrees x).symm

end FormalResearch.MathematicalTooling.Semantics.Atlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ac39e1a62aa3c7a4c3ada39a61f4f435643a456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
