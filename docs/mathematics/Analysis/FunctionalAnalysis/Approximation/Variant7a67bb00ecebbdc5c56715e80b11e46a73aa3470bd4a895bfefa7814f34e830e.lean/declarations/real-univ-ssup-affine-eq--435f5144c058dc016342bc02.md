# real_univ_sSup_affine_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39dae451-e77b-c001-88af-d0f057897360",
  "kind": "theorem",
  "lexical_name": "real_univ_sSup_affine_eq",
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
  "slug": "real-univ-ssup-affine-eq--435f5144c058dc016342bc02",
  "source": {
    "blob": "5414e3f1a4c9f4e34cc582880456806a910a2c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:435f5144c058dc016342bc0202987d2acaf206cbf82f0b3beebf6a10c54eb9b0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39dae451-e77b-c001-88af-d0f057897360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_univ_sSup_affine_eq (hφc : LowerSemicontinuous φ) (hφcv : ConvexOn ℝ univ φ) :
    sSup {f | f ≤ φ ∧ ∃ (l : E →L[ℝ] ℝ) (c : ℝ), f = l + const E c} = φ :=
  univ_sSup_affine_eq (𝕜 := ℝ) hφc hφcv

/-- The real version of `univ_sSup_of_countable_affine_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5414e3f1a4c9f4e34cc582880456806a910a2c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
