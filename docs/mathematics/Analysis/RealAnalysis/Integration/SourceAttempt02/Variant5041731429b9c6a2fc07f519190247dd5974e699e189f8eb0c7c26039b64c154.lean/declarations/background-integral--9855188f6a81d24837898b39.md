# background_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7abcc31b-d388-4d6e-fac8-83124bbd81db",
  "kind": "theorem",
  "lexical_name": "background_integral",
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
  "slug": "background-integral--9855188f6a81d24837898b39",
  "source": {
    "blob": "d87f9294e16adf08c2a010dd1b457acad2c046f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9855188f6a81d24837898b3909ae587d1ae9af427cd2e422bd09a28658032081",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7abcc31b-d388-4d6e-fac8-83124bbd81db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem background_integral (t γ : ℝ) :
    (∫ s in 0..t, Real.exp (s/2)*(γ-s)) =
      2*Real.exp (t/2)*(γ+2-t)-4-2*γ := by
  have hd (s : ℝ) : HasDerivAt
      (fun s : ℝ => 2*Real.exp (s/2)*(γ+2-s)) (Real.exp (s/2)*(γ-s)) s := by
    apply ((twiceExp_hasDerivAt s).mul
      ((hasDerivAt_const s (γ+2)).sub (hasDerivAt_id s))).congr_deriv
    simp only [id_eq]
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s/2)*(γ-s))).intervalIntegrable 0 t)]
  simp only [zero_div, Real.exp_zero, mul_one, sub_zero]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant5041731429b9c6a2fc07f519190247dd5974e699e189f8eb0c7c26039b64c154.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d87f9294e16adf08c2a010dd1b457acad2c046f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
