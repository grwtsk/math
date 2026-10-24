# localized_dilation_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b240b83-acea-3d11-c2d8-2db6169c80de",
  "kind": "theorem",
  "lexical_name": "localized_dilation_value",
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
  "slug": "localized-dilation-value--5139d5391fc85995e70ab9e9",
  "source": {
    "blob": "de5743b9295f25c129fd7edb7ed178032172f820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5139d5391fc85995e70ab9e9a4cd1d4008c2271c685153999932898d4ed9bd46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b240b83-acea-3d11-c2d8-2db6169c80de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localized_dilation_value (w : ι → ℝ) (q : ι) (a : ℝ) :
    jointVector (fun i => if i = q then 1 else 0)
        (fun i => if i = q then a else 0) ⬝ᵥ
      signedDilation (pairKernel w) *ᵥ
        jointVector (fun i => if i = q then 1 else 0)
          (fun i => if i = q then a else 0) = 2 * a * w q := by
  rw [pairKernel_covariance]
  simp [ite_mul, mul_ite]
  ring

/-- Every nonzero literal weight produces both a positive and a negative form
value; a positive Laughlin reference form cannot be assigned by analogy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleNativeGuardAudit/Variantf1b472451235aab53fdea6edae2cb79facbe44d08e611a84d0d27734e30aa154.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de5743b9295f25c129fd7edb7ed178032172f820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
