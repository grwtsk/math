# traceGramInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3af50803932861442246cf26af582c0fa13ae627f4c869df04fc4161a3a7f94e",
  "kind": "def",
  "lexical_name": "traceGramInverse",
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
  "slug": "tracegraminverse--9aaeaf0c70f3fb6671212069",
  "source": {
    "blob": "fa10c99b4a8c6ac086a5b4b131016cea0ba65b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9aaeaf0c70f3fb667121206906fb71182bc27aed7eacf7db1573e1035c4dea7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3af50803932861442246cf26af582c0fa13ae627f4c869df04fc4161a3a7f94e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traceGramInverse : Matrix (Fin 6) (Fin 6) ℚ :=
  !![(53 / 253), (-31 / 253), (39 / 253), (-1 / 11), (1 / 253), (1 / 253);
     (-31 / 253), (-13 / 253), (131 / 506), (12 / 253), (31 / 506), (-12 / 253);
     (39 / 253), (131 / 506), (-3 / 506), (-27 / 506), (-39 / 506), (8 / 253);
     (-1 / 11), (12 / 253), (-27 / 506), (27 / 253), (17 / 253), (-21 / 506);
     (1 / 253), (31 / 506), (-39 / 506), (17 / 253), (-17 / 253), (5 / 253);
     (1 / 253), (-12 / 253), (8 / 253), (-21 / 506), (5 / 253), (-1 / 506)]

/-- The lower factor in this module, with the following exact parameterization.

def lowerFactor : Matrix (Fin 6) (Fin 6) ℚ := !![1, 0, 0, 0, 0, 0; (1 / 6), 1, 0, 0, 0, 0; (7
/ 6), (107 / 41), 1, 0, 0, 0; (19 / 6), (215 / 41), (11 / 7), 1, 0, 0; (13 / 2), (507 / 41),
(33 / 14), (8 / 3), 1, 0; (91 / 6), (1283 / 41), (46 / 7), (17 / 3), 10, 1]
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa10c99b4a8c6ac086a5b4b131016cea0ba65b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
