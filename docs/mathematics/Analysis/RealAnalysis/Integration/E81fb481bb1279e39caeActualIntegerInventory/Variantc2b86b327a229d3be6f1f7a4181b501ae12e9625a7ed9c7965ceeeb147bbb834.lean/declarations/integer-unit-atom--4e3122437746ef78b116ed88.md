# integer_unit_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67f31ee5-b967-b338-13ca-82faea9e837a",
  "kind": "theorem",
  "lexical_name": "integer_unit_atom",
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
  "slug": "integer-unit-atom--4e3122437746ef78b116ed88",
  "source": {
    "blob": "f851aeb18e66f032f6c368b316526e748718270f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3122437746ef78b116ed88efd77345f5e403994908098e81372fe270021792",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67f31ee5-b967-b338-13ca-82faea9e837a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem integer_unit_atom {A : ℝ} (hA : 1 ≤ A) :
    (ArithmeticFunction.vonMangoldt 1-1) * plainProfile A 1 1 = -1 := by
  rw [plainProfile_unit_eq (by norm_num : (0:ℝ) < 1)]
  simp only [Real.log_one, Real.sqrt_one, div_one, ArithmeticFunction.vonMangoldt_apply_one]
  rw [EstimateCorrelation.actual_correlation_at_zero A hA]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f851aeb18e66f032f6c368b316526e748718270f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
