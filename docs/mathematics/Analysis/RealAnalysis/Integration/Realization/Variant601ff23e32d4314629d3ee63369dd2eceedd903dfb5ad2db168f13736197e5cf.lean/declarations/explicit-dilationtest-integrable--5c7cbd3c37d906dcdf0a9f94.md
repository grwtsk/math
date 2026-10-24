# explicit_dilationTest_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d645afe2-a16a-66a1-4c45-c890363c0ea6",
  "kind": "theorem",
  "lexical_name": "explicit_dilationTest_integrable",
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
  "slug": "explicit-dilationtest-integrable--5c7cbd3c37d906dcdf0a9f94",
  "source": {
    "blob": "9f698a8b967edc415191fa637d8842bb19398563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c7cbd3c37d906dcdf0a9f94472ddff81dd0ae4a281fc0532a40c14975ae57f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d645afe2-a16a-66a1-4c45-c890363c0ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_dilationTest_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (dilationTest explicitSecondDerivative A) volume := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact (explicitSecondDerivative_integrable A).sub ((scaledBump_integrable A hpos).div_const 4)


/-- The constructed dilation test is precisely the indicated compact polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f698a8b967edc415191fa637d8842bb19398563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
