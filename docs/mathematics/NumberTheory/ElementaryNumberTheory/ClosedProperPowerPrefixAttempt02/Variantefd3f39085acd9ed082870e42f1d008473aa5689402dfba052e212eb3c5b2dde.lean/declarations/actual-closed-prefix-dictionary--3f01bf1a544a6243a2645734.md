# actual_closed_prefix_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76d308e6-1d19-4a43-c324-de5276976ffc",
  "kind": "theorem",
  "lexical_name": "actual_closed_prefix_dictionary",
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
  "slug": "actual-closed-prefix-dictionary--3f01bf1a544a6243a2645734",
  "source": {
    "blob": "7a6c2e1ee39ac8aa60883dbef8c947352d01650a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 116,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f01bf1a544a6243a264573493c0b08b6a416b014519e0a86233c80968db0507",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76d308e6-1d19-4a43-c324-de5276976ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_closed_prefix_dictionary (t : ℝ) :
    weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t =
      actualProperPowerClosedPrefix t :=
  weighted_difference_eq_proper_exponents ⌊Real.exp t⌋₊

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a6c2e1ee39ac8aa60883dbef8c947352d01650a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
