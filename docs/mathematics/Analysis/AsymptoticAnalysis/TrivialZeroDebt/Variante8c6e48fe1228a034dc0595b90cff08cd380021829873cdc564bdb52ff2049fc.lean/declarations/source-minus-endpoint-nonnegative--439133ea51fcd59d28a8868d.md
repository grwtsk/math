# source_minus_endpoint_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d68d2cf5-56a8-64f3-676d-a74abf9d811d",
  "kind": "theorem",
  "lexical_name": "source_minus_endpoint_nonnegative",
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
  "slug": "source-minus-endpoint-nonnegative--439133ea51fcd59d28a8868d",
  "source": {
    "blob": "b8d162f2f45f4d685ddf2540ae206f285e0e21dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 150,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:439133ea51fcd59d28a8868dc268a263575a09b2b0c0309e2c5ad4459cf52fc2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d68d2cf5-56a8-64f3-676d-a74abf9d811d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_minus_endpoint_nonnegative (xi : ℝ) :
    0 ≤ archimedeanMultiplier xi + archimedeanConstant - zeroEndpoint xi := by
  rw [← (hasSum_trivialContribution xi).tsum_eq]
  exact tsum_nonneg (trivialContribution_nonnegative xi)

/-- Removing a known contribution is not the same as proving that it vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d162f2f45f4d685ddf2540ae206f285e0e21dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
