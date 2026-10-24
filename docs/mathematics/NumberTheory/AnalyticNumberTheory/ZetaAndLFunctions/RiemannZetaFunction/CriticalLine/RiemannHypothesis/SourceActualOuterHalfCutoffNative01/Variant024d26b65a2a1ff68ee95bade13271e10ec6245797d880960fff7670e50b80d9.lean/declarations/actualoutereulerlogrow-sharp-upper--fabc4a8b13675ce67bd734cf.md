# actualOuterEulerLogRow_sharp_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0760ddfb-48fc-b8df-ec6c-6c9bba63d618",
  "kind": "theorem",
  "lexical_name": "actualOuterEulerLogRow_sharp_upper",
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
  "slug": "actualoutereulerlogrow-sharp-upper--fabc4a8b13675ce67bd734cf",
  "source": {
    "blob": "d8d7fe5d0f50aad0fab21091cfb46ad28269b049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative01/Variant024d26b65a2a1ff68ee95bade13271e10ec6245797d880960fff7670e50b80d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fabc4a8b13675ce67bd734cf22b6c9633659ba9d2283bd70be61c38ab5f3a351",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative01/Variant024d26b65a2a1ff68ee95bade13271e10ec6245797d880960fff7670e50b80d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0760ddfb-48fc-b8df-ec6c-6c9bba63d618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOuterEulerLogRow_sharp_upper {A d : ℝ} (hA : 1 ≤ A)
    (hd : Real.exp (2 * A) / 2 ≤ d) :
    actualOuterEulerLogRow A d = -actualOuterContinuousLogRow A d := by
  have hd0 : 0 < d := (by positivity : 0 < Real.exp (2 * A) / 2).trans_le hd
  unfold actualOuterEulerLogRow
  rw [← sourceMobiusKernel_eq_completeLogProfileSum A hd0,
    sourceMobiusKernel_sharp_upper_zero hA hd, zero_sub]

/-- Every original high outer row and its actual signed coefficient remain in this zero identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative01/Variant024d26b65a2a1ff68ee95bade13271e10ec6245797d880960fff7670e50b80d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOuterHalfCutoffNative01/Variant024d26b65a2a1ff68ee95bade13271e10ec6245797d880960fff7670e50b80d9.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8d7fe5d0f50aad0fab21091cfb46ad28269b049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
