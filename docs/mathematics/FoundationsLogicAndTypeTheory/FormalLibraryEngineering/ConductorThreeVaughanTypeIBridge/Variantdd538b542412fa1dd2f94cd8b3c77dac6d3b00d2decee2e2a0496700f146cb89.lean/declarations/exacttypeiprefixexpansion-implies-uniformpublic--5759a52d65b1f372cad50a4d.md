# exactTypeIPrefixExpansion_implies_uniformPublic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f07b84ae-231d-6cb1-b243-10cac15d6ca7",
  "kind": "theorem",
  "lexical_name": "exactTypeIPrefixExpansion_implies_uniformPublic",
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
  "slug": "exacttypeiprefixexpansion-implies-uniformpublic--5759a52d65b1f372cad50a4d",
  "source": {
    "blob": "48574b2ed131cb730755aaadd2695882a25e4201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantdd538b542412fa1dd2f94cd8b3c77dac6d3b00d2decee2e2a0496700f146cb89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5759a52d65b1f372cad50a4dab1f9c976c3f02b6b0d704506de7fa4b4964f7b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantdd538b542412fa1dd2f94cd8b3c77dac6d3b00d2decee2e2a0496700f146cb89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f07b84ae-231d-6cb1-b243-10cac15d6ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactTypeIPrefixExpansion_implies_uniformPublic
    (hExpansion : ExactConductorThreeTypeIPrefixExpansion) :
    UniformConductorThreeTypeIMaximal := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hBound⟩ :=
    exactTypeIPrefixExpansion_implies_uniform hExpansion epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  rw [← convolutionTypeIPrefix_eq_public]
  exact hBound N hN x hx

end

end Surface.Core.ConductorThreeVaughanTypeIBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantdd538b542412fa1dd2f94cd8b3c77dac6d3b00d2decee2e2a0496700f146cb89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantdd538b542412fa1dd2f94cd8b3c77dac6d3b00d2decee2e2a0496700f146cb89.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48574b2ed131cb730755aaadd2695882a25e4201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
