# jetCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75007bb5189a1c80a0b53dbfc4b8c298c28355464898e5a902d62cd384996975",
  "kind": "def",
  "lexical_name": "jetCoefficient",
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
  "slug": "jetcoefficient--336b6e7792094ccef0971dbb",
  "source": {
    "blob": "2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:336b6e7792094ccef0971dbb606452d5ad16846866e28ab4fba7a7f7919d89bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75007bb5189a1c80a0b53dbfc4b8c298c28355464898e5a902d62cd384996975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def jetCoefficient (k : Fin 5) (j : Fin 6) : ℝ :=
  ![![-3, 2, 0, 0, 0, 0], ![-15, 30, -8, 0, 0, 0],
    ![-75, 330, -224, 32, 0, 0], ![-375, 3270, -4232, 1440, -128, 0],
    ![-1875, 30930, -68096, 41408, -8448, 512]] k j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
