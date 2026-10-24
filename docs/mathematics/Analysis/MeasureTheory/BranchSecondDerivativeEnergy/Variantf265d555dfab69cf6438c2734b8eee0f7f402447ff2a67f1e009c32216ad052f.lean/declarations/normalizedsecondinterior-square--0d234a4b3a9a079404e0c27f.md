# normalizedSecondInterior_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db5c023b-9574-ab75-cc67-8933765b8d05",
  "kind": "theorem",
  "lexical_name": "normalizedSecondInterior_square",
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
  "slug": "normalizedsecondinterior-square--0d234a4b3a9a079404e0c27f",
  "source": {
    "blob": "14784bb6b9bf586b3dd01f08381ef3c6b68e8664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 170,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d234a4b3a9a079404e0c27f5b7433e570a03205ae9d17cef186b093e21503b3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db5c023b-9574-ab75-cc67-8933765b8d05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSecondInterior_square {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedSecondInterior A x ^ 2 =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) ^ 2 /
        A / sourceNormalization A := by
  have hz : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  have factor : fourthInterior A x - secondInterior A x / 4 =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) /
        Real.sqrt A := by
    dsimp [fourthInterior, secondInterior, unitSecond]
    ring
  rw [normalizedSecondInterior, factor, div_pow, div_pow,
    Real.sq_sqrt hA.le, Real.sq_sqrt hz.le]

/-- Exact full-line second derivative energy of the unchanged normalized source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14784bb6b9bf586b3dd01f08381ef3c6b68e8664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
