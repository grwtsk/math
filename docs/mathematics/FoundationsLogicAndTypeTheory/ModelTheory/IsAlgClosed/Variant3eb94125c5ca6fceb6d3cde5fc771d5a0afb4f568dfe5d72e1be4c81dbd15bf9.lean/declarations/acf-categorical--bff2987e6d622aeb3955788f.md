# ACF_categorical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:253d242a-326e-20fc-0e76-c08dd9b64d8b",
  "kind": "theorem",
  "lexical_name": "ACF_categorical",
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
  "slug": "acf-categorical--bff2987e6d622aeb3955788f",
  "source": {
    "blob": "7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bff2987e6d622aeb3955788fc42fa467498a1572d481301ebe8e518721597f08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253d242a-326e-20fc-0e76-c08dd9b64d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ACF_categorical {p : ℕ} (κ : Cardinal) (hκ : ℵ₀ < κ) :
    Categorical κ (Theory.ACF p) := by
  rintro ⟨M⟩ ⟨N⟩ hM hN
  let _ := fieldOfModelACF p M
  have := modelField_of_modelACF p M
  let _ := compatibleRingOfModelField M
  have := isAlgClosed_of_model_ACF p M
  have := charP_of_model_fieldOfChar p M
  let _ := fieldOfModelACF p N
  have := modelField_of_modelACF p N
  let _ := compatibleRingOfModelField N
  have := isAlgClosed_of_model_ACF p N
  have := charP_of_model_fieldOfChar p N
  constructor
  refine languageEquivEquivRingEquiv.symm ?_
  apply Classical.choice
  refine IsAlgClosed.ringEquiv_of_equiv_of_char_eq p ?_ ?_
  · rw [hM]; exact hκ
  · rw [← Cardinal.eq, hM, hN]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
