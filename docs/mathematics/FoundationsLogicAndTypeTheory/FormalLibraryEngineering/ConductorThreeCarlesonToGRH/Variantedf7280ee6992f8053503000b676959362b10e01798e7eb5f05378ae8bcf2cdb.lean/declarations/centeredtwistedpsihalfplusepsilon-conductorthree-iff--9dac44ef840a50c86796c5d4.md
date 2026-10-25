# centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c2c7b33857ce0794d2537ac7dd11a2188ebeb2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edf7280ee6992f8053503000b676959362b10e01798e7eb5f05378ae8bcf2cdb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:763650e2-4d75-e74e-072c-039188ddea95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25843fe3-f731-dae9-89fc-4f14df921bc8",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff",
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
  "slug": "centeredtwistedpsihalfplusepsilon-conductorthree-iff--9dac44ef840a50c86796c5d4",
  "source": {
    "blob": "3c2c7b33857ce0794d2537ac7dd11a2188ebeb2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantedf7280ee6992f8053503000b676959362b10e01798e7eb5f05378ae8bcf2cdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dac44ef840a50c86796c5d4461e79ab64a555b7693a9256257290afe89c1ea4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantedf7280ee6992f8053503000b676959362b10e01798e7eb5f05378ae8bcf2cdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25843fe3-f731-dae9-89fc-4f14df921bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff :
    CenteredTwistedPsiHalfPlusEpsilon conductorThreeCharacter ↔
      TwistedPsiHalfPlusEpsilon := by
  constructor
  · intro h ε hε
    obtain ⟨C, hC, hBound⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro x hx
    have hxBound := hBound x hx
    rw [centeredTwistedPsi_conductorThreeCharacter,
      Complex.norm_real, Real.norm_eq_abs] at hxBound
    exact hxBound
  · intro h ε hε
    obtain ⟨C, hC, hBound⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro x hx
    rw [centeredTwistedPsi_conductorThreeCharacter,
      Complex.norm_real, Real.norm_eq_abs]
    exact hBound x hx

/-- The generic and existing conductor-three GRH predicates are literally
the same zero-location statement. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantedf7280ee6992f8053503000b676959362b10e01798e7eb5f05378ae8bcf2cdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCarlesonToGRH/Variantedf7280ee6992f8053503000b676959362b10e01798e7eb5f05378ae8bcf2cdb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c2c7b33857ce0794d2537ac7dd11a2188ebeb2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
