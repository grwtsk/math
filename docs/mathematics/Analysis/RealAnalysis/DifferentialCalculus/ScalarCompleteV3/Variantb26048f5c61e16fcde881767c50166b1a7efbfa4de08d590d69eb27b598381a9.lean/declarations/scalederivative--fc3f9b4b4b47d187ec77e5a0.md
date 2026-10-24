# scaleDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5519f1432d88ede68f1af450702cfbd4eee70f125674c368a6757707d8d467b6",
  "kind": "def",
  "lexical_name": "scaleDerivative",
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
  "slug": "scalederivative--fc3f9b4b4b47d187ec77e5a0",
  "source": {
    "blob": "3016575b7b1105953a1c246847918a1b770cc367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3f9b4b4b47d187ec77e5a0bf58bbbb4f7cfdc8302846daf84e1ea3be13ee34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5519f1432d88ede68f1af450702cfbd4eee70f125674c368a6757707d8d467b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scaleDerivative (A x : ℝ) : ℝ :=
  -(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
      scaleProfile A x +
    scaleAmplitude A *
      (-2 * deriv (deriv sourceBump) (x / A) / A ^ 3 -
        (x / A) * deriv (deriv (deriv sourceBump)) (x / A) / A ^ 3 +
        (x / A) * deriv sourceBump (x / A) / (4 * A))

/-- The explicit derivative is expressed directly through the unchanged q_A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3016575b7b1105953a1c246847918a1b770cc367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
