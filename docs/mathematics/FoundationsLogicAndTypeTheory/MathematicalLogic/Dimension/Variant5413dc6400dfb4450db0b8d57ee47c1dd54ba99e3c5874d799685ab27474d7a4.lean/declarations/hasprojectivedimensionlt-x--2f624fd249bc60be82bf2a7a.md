# hasProjectiveDimensionLT_X₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2eb69f-2a02-4f89-951e-5d7cd6b4f3db",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLT_X₂",
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
  "slug": "hasprojectivedimensionlt-x--2f624fd249bc60be82bf2a7a",
  "source": {
    "blob": "732e58383896be4ce3350a0404f58ad85a720f32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f624fd249bc60be82bf2a7a9ddc9de9c67dd7d5078c50d12d5a9e3622459eae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2eb69f-2a02-4f89-951e-5d7cd6b4f3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLT_X₂ (h₁ : HasProjectiveDimensionLT S.X₁ n)
    (h₃ : HasProjectiveDimensionLT S.X₃ n) :
    HasProjectiveDimensionLT S.X₂ n := by
  letI := HasExt.standard C
  rw [hasProjectiveDimensionLT_iff]
  intro i hi Y x₂
  obtain ⟨x₃, rfl⟩ := Ext.contravariant_sequence_exact₂ hS _ x₂
    (Ext.eq_zero_of_hasProjectiveDimensionLT _ n hi)
  rw [x₃.eq_zero_of_hasProjectiveDimensionLT n hi, Ext.comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732e58383896be4ce3350a0404f58ad85a720f32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
