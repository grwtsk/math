# source_transform_square_norms_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:168a5230-12f7-ab91-5d63-48a946b74cfe",
  "kind": "theorem",
  "lexical_name": "source_transform_square_norms_summable",
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
  "slug": "source-transform-square-norms-summable--eead9d70fe60a87c7caa8796",
  "source": {
    "blob": "5511708fcb50bbde02f87d6b6463f17872ab7323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Variantdf3edf577aeef6d22c46615dcae185515a4e5a14ef454c2e0f00ede6b6df1605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eead9d70fe60a87c7caa8796b02a69ad763a097ed3b85fad341ec878ec5cba1f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Variantdf3edf577aeef6d22c46615dcae185515a4e5a14ef454c2e0f00ede6b6df1605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:168a5230-12f7-ab91-5d63-48a946b74cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_transform_square_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖bilateralTransform A (shiftedValue o) ^ 2‖) := by
  have hsum : Summable (fun o : ZeroOccurrence ↦
      (64 * decayConstant A ^ 2) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) :=
    ZeroShellCount.zero_summability.mul_left _
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  simpa only [norm_norm] using transform_square_norm_le A hA (shiftedValue o)
    ⟨(shiftedValue_strip o).1.le, (shiftedValue_strip o).2.le⟩ ho

/-- Ordinary complex squares of the actual bilateral transforms are summable at every source radius.
This supplies the summability component of `ZeroSideIdentityObligation`, without its open equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Variantdf3edf577aeef6d22c46615dcae185515a4e5a14ef454c2e0f00ede6b6df1605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Variantdf3edf577aeef6d22c46615dcae185515a4e5a14ef454c2e0f00ede6b6df1605.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5511708fcb50bbde02f87d6b6463f17872ab7323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
