# algebraicClosure_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2682ed54-2e63-54c4-18df-62a4c98e329c",
  "kind": "theorem",
  "lexical_name": "algebraicClosure_eq_bot",
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
  "slug": "algebraicclosure-eq-bot--38b1deb239c623da71b4f8d2",
  "source": {
    "blob": "bd401aa570b7d998350c5dfb28c129ce78e7ec96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 155,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b1deb239c623da71b4f8d289bb46508ffd1670931c596c3c9003255c6f3a41",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2682ed54-2e63-54c4-18df-62a4c98e329c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraicClosure_eq_bot :
    algebraicClosure (algebraicClosure F E) E = ⊥ :=
  bot_unique fun x hx ↦ mem_bot.2
    ⟨⟨x, isIntegral_trans x (mem_algebraicClosure_iff'.1 hx)⟩, rfl⟩

/-- The normal closure in `E/F` of the algebraic closure of `F` in `E` is equal to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd401aa570b7d998350c5dfb28c129ce78e7ec96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
