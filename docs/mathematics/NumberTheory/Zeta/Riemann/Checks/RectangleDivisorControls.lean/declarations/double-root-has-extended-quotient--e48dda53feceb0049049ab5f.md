# double_root_has_extended_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6007ce48-2d11-d658-cba5-9c3a0d7c2a97",
  "kind": "theorem",
  "lexical_name": "double_root_has_extended_quotient",
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
  "slug": "double-root-has-extended-quotient--e48dda53feceb0049049ab5f",
  "source": {
    "blob": "b661046b9c222faf096e3b94f53630348b3e5557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e48dda53feceb0049049ab5f479a3a6ea290d271c0236dd8c8c31ecbb96c5e56",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6007ce48-2d11-d658-cba5-9c3a0d7c2a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem double_root_has_extended_quotient :
    ∃ q : ℂ → ℂ, AnalyticOnNhd ℂ q unitRectangle.box ∧
      (∀ w ∈ unitRectangle.box, q w ≠ 0) ∧
      (∀ w ∈ unitRectangle.box, w^2 = q w *
        FiniteLinearRemoval.product (fun _ : Fin 1 => (0 : ℂ)) (fun _ => 2) w) := by
  obtain ⟨q,hq,hn,he,_⟩ := FiniteLinearRemoval.exists_quotient
    (fun _ : Fin 1 => (0 : ℂ)) (fun _ => 2) (fun w : ℂ => w^2) unitRectangle.box
    (fun i j _ => Subsingleton.elim i j) (fun _ => by norm_num)
    (fun _ => by norm_num [unitRectangle, Rectangle.box])
    (fun w _ => by fun_prop)
    (fun _ => ⟨fun _ => 1, analyticAt_const, one_ne_zero,
      Filter.Eventually.of_forall (fun w => by simp)⟩)
    (by intro w _ hw; exact ⟨0, (pow_eq_zero hw)⟩)
  exact ⟨q,hq,hn,he⟩

/-- Raw totalized division is NOT the removable extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/RectangleDivisorControls.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b661046b9c222faf096e3b94f53630348b3e5557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
