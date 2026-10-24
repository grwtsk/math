# finite_derivative_enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d589968-86b8-93a4-fde2-899957ea9233",
  "kind": "theorem",
  "lexical_name": "finite_derivative_enclosure",
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
  "slug": "finite-derivative-enclosure--a8af0fcd7f7624272eee477b",
  "source": {
    "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 438,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8af0fcd7f7624272eee477b00b9ee93162c83dcfc352bcc46c091eb8f8bffb7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d589968-86b8-93a4-fde2-899957ea9233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_derivative_enclosure {s : ℂ} (hs : Region s) :
    ‖exactDerivative s-model s‖ ≤ (1/4 : ℝ) := by
  have hraw : ‖exactDerivative s-rawModel s‖ ≤
      16*((52/4096 : ℝ)+17*logRadius)+(93/4096+30*logRadius) := by
    have heq : exactDerivative s-rawModel s =
        (∑ k : Fin 16, ((1-(s-1)*(Real.log (base k) : ℂ))*power k s-
          (1-(s-1)*(logCenter k : ℂ))*powerJet k s)) +
        ((weightSlope s-weight s*(Real.log 16 : ℂ))*power 15 s-
          (weightSlope s-weight s*(logCenter 15 : ℂ))*powerJet 15 s) := by
      unfold exactDerivative rawModel
      rw [Finset.sum_sub_distrib]
      ring
    rw [heq]
    apply (norm_add_le _ _).trans
    apply add_le_add _ (endpoint_error hs)
    apply (norm_sum_le _ _).trans
    calc
      _ ≤ ∑ k : Fin 16, ((52/4096 : ℝ)+17*logRadius) :=
        Finset.sum_le_sum (fun k _ => finite_term_error k hs)
      _ = _ := by norm_num
  have ht : ‖exactDerivative s-model s‖ ≤ ‖exactDerivative s-rawModel s‖+‖rawModel s-model s‖ := by
    convert norm_add_le (exactDerivative s-rawModel s) (rawModel s-model s) using 1 <;> ring
  have hb := rounding_error hs
  have hnum : 16*((52/4096 : ℝ)+17*logRadius)+(93/4096+30*logRadius)+1/1024 ≤ 1/4 := by
    norm_num [logRadius]
  linarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen.Jet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
