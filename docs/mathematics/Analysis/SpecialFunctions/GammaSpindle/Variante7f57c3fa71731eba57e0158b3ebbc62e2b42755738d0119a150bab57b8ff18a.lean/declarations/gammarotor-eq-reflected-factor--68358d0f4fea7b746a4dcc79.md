# gammaRotor_eq_reflected_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff9e81a5ca018a6aafef91b887e68e2489f6e9a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:799ca92a-4082-bbd6-7ca7-a81e71cbff86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7628d5ab-5274-fdb9-7ce4-b7ad3bcc7796",
  "kind": "theorem",
  "lexical_name": "gammaRotor_eq_reflected_factor",
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
  "slug": "gammarotor-eq-reflected-factor--68358d0f4fea7b746a4dcc79",
  "source": {
    "blob": "ff9e81a5ca018a6aafef91b887e68e2489f6e9a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 149,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68358d0f4fea7b746a4dcc79d6c6069eac93228a6e2412cb91324a5ad3c8565e",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7628d5ab-5274-fdb9-7ce4-b7ad3bcc7796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaRotor_eq_reflected_factor
    (chi : PrimitiveCharacter) (t : ℝ) :
    gammaRotor chi t =
      gammaFactor chi (criticalLine (-t)) /
        gammaFactor chi (criticalLine t) := by
  rw [gammaRotor, criticalLine_neg, gammaFactor_conj]
  rfl

/-- The real phase-gradient/radial spindle profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9e81a5ca018a6aafef91b887e68e2489f6e9a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
