# integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:764d1eef-7295-4ed8-f484-aaf0ab775b38",
  "kind": "theorem",
  "lexical_name": "integrable",
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
  "slug": "integrable--6a3f4d486485f15ab9b580de",
  "source": {
    "blob": "ca681424f7944753552721b0a54ba3dd378cd43e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 702,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestFunction/Variantea65ab43ca4080d4508547eaac8798a5b3d801d8a70567e67899f3bd1413fa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a3f4d486485f15ab9b580def299a6fc31f677b7c08c07f1363386abe26af461",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestFunction/Variantea65ab43ca4080d4508547eaac8798a5b3d801d8a70567e67899f3bd1413fa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:764d1eef-7295-4ed8-f484-aaf0ab775b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem integrable {μ : Measure E}
    (H : LocallyIntegrableOn (fun (_ : E) ↦ (1 : ℝ)) Ω μ)
    (f : 𝓓^{n}(Ω, F)) : Integrable f μ := by
  rw [← integrableOn_iff_integrable_of_support_subset (subset_tsupport f)]
  replace H := H.integrableOn_compact_subset f.tsupport_subset f.hasCompactSupport
  suffices IntegrableOn ((1 : ℝ) • f) (tsupport f) μ by simpa
  rw [IntegrableOn, ← memLp_one_iff_integrable] at H ⊢
  exact H.smul f.memLp_top

variable [Algebra ℝ 𝕜] [IsScalarTower ℝ 𝕜 F₁] [NormedSpace ℝ F₃] [IsScalarTower ℝ 𝕜 F₃]

-- TODO: semilinearize
/-- Given a continuous `𝕜`-bilinear map `B : F₁ →L[𝕜] F₂ →L[𝕜] F₃`, a measure `μ` on `E`,
and a function `φ : E → F₂` which is locally `μ`-integrable, this is the *continuous* `𝕜`-linear map
`f ↦ ∫ x, B (f x) (φ x) ∂μ` from `𝓓^{n}(E, F₁)` to `F₃`. Otherwise, this is the zero map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestFunction/Variantea65ab43ca4080d4508547eaac8798a5b3d801d8a70567e67899f3bd1413fa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestFunction/Variantea65ab43ca4080d4508547eaac8798a5b3d801d8a70567e67899f3bd1413fa9d.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca681424f7944753552721b0a54ba3dd378cd43e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
