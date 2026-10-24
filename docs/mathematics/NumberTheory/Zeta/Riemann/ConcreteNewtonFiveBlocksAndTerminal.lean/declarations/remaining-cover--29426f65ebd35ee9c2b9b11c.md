# remaining_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a91d4abe-bea2-a9df-0113-938ec14f594e",
  "kind": "theorem",
  "lexical_name": "remaining_cover",
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
  "slug": "remaining-cover--29426f65ebd35ee9c2b9b11c",
  "source": {
    "blob": "774c8d17ba1872e2fedbe2bfa38997edc3547b83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFiveBlocksAndTerminal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29426f65ebd35ee9c2b9b11c13d846d5d28e52c0673ecd90d967eb910e3eac05",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFiveBlocksAndTerminal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a91d4abe-bea2-a9df-0113-938ec14f594e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) (h3 : b ≠ 3) (h4 : b ≠ 4) :
    ∃ j : Fin 59, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  have hb4 : b.1 ≠ 4 := by intro h; apply h4; exact Fin.ext h
  refine ⟨⟨b.1 - 5, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 5 + 5 = b.1
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFiveBlocksAndTerminal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFiveBlocksAndTerminal.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `774c8d17ba1872e2fedbe2bfa38997edc3547b83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
