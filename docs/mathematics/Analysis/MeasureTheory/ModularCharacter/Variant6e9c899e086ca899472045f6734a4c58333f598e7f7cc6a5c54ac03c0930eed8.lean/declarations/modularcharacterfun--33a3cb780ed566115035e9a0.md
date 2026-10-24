# modularCharacterFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:accef20aed4ded0c4edb3db667454bc7747c00a3ed6f5cbe77e14ef0dee0de6f",
  "kind": "def",
  "lexical_name": "modularCharacterFun",
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
  "slug": "modularcharacterfun--33a3cb780ed566115035e9a0",
  "source": {
    "blob": "a1a0c998ea5aad725e72b4a5c8ab8573e986b0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33a3cb780ed566115035e9a070379a1c232c034fceded4e3f8ccab1c442c5e4e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:accef20aed4ded0c4edb3db667454bc7747c00a3ed6f5cbe77e14ef0dee0de6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def modularCharacterFun (g : G) : ℝ≥0 :=
  letI : MeasurableSpace G := borel G
  haveI : BorelSpace G := ⟨rfl⟩
  haarScalarFactor (map (· * g) MeasureTheory.Measure.haar) MeasureTheory.Measure.haar

/-- Independence of modularCharacterFun from the chosen Haar measure. -/
@[to_additive "Independence of addModularCharacterFun from the chosen Haar measure"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a0c998ea5aad725e72b4a5c8ab8573e986b0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
