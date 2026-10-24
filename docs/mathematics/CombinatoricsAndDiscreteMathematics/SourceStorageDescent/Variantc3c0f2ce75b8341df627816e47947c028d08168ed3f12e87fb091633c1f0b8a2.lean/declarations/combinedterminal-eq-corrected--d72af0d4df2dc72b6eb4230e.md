# combinedTerminal_eq_corrected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:518d4693-1207-7487-b9a7-24f7ea668976",
  "kind": "theorem",
  "lexical_name": "combinedTerminal_eq_corrected",
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
  "slug": "combinedterminal-eq-corrected--d72af0d4df2dc72b6eb4230e",
  "source": {
    "blob": "7c11be6f827b2caab24c7523e1ecef4f97b592ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variantc3c0f2ce75b8341df627816e47947c028d08168ed3f12e87fb091633c1f0b8a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d72af0d4df2dc72b6eb4230e8bb102184754b8c3113c5010b541ea8d423ae1e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variantc3c0f2ce75b8341df627816e47947c028d08168ed3f12e87fb091633c1f0b8a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:518d4693-1207-7487-b9a7-24f7ea668976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combinedTerminal_eq_corrected (A : ℝ) (hA : 1 ≤ A) :
    combinedTerminalWork A + totalQuadraticWork A =
      trendValue A + correctedEnergy A 0 (node A 0) -
        correctedEnergy A (cutoff A) (node A (cutoff A)) + totalSmoothWork A := by
  have hc := nonaffineWork_corrected_terminal A hA
  have hc' := nonaffineWork_complete_balance A hA
  unfold combinedTerminalWork
  linarith only [hc, hc']

/-- The terminal quantity includes the already finite quadratic impulses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variantc3c0f2ce75b8341df627816e47947c028d08168ed3f12e87fb091633c1f0b8a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Variantc3c0f2ce75b8341df627816e47947c028d08168ed3f12e87fb091633c1f0b8a2.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c11be6f827b2caab24c7523e1ecef4f97b592ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
