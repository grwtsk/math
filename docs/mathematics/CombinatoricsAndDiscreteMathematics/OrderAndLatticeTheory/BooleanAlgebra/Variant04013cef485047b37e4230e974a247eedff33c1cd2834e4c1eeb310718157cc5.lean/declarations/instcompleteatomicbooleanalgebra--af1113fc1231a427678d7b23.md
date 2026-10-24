# instCompleteAtomicBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f88d72829fe152e823af0f8dd6f1e0bad464bfd0564b27831a84e078d20d97a",
  "kind": "instance",
  "lexical_name": "instCompleteAtomicBooleanAlgebra",
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
  "slug": "instcompleteatomicbooleanalgebra--af1113fc1231a427678d7b23",
  "source": {
    "blob": "31794a5f21e789a3337be91548ff262177ac4d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af1113fc1231a427678d7b234c12af579c4eb426456c3baf27d6eca37bdc9ff2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f88d72829fe152e823af0f8dd6f1e0bad464bfd0564b27831a84e078d20d97a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteAtomicBooleanAlgebra : CompleteAtomicBooleanAlgebra (Set α) :=
  { instBooleanAlgebra with
    le_sSup := fun _ t t_in _ a_in => ⟨t, t_in, a_in⟩
    sSup_le := fun _ _ h _ ⟨t', ⟨t'_in, a_in⟩⟩ => h t' t'_in a_in
    le_sInf := fun _ _ h _ a_in t' t'_in => h t' t'_in a_in
    sInf_le := fun _ _ t_in _ h => h _ t_in
    iInf_iSup_eq := by intros; ext; simp [Classical.skolem] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31794a5f21e789a3337be91548ff262177ac4d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
