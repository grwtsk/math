# full_remainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:725352f2-cef6-4780-f2ed-55d845c59000",
  "kind": "theorem",
  "lexical_name": "full_remainder_integrable",
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
  "slug": "full-remainder-integrable--4c7b7f9b76c81cb2745b0981",
  "source": {
    "blob": "f851aeb18e66f032f6c368b316526e748718270f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c7b7f9b76c81cb2745b0981016552b9785628d8f3a6061d51a6ae20ce316d18",
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

Occurrence: `result:725352f2-cef6-4780-f2ed-55d845c59000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem full_remainder_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (actualRemainder A) (Ioi 0) := by
  have he : actualRemainder A = fun u =>
      Int.fract u*deriv (plainProfile A 1) u - Int.fract u*plainModelDerivative A 1 u := by
    funext u
    unfold actualRemainder
    ring
  rw [he]
  exact (fractional_derivative_integrable hA).sub (fractional_model_integrable A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc2b86b327a229d3be6f1f7a4181b501ae12e9625a7ed9c7965ceeeb147bbb834.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f851aeb18e66f032f6c368b316526e748718270f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
