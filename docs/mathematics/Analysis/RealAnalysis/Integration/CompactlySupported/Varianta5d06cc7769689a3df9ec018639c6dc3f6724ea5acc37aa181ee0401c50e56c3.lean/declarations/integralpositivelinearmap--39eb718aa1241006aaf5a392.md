# integralPositiveLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0513e35661123b854dd7249c99dee24468b8bca030885f32643e9456a5ca7bd",
  "kind": "def",
  "lexical_name": "integralPositiveLinearMap",
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
  "slug": "integralpositivelinearmap--39eb718aa1241006aaf5a392",
  "source": {
    "blob": "1be0d01dc83d4d400005f3b66040def6462bb745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactlySupported/Varianta5d06cc7769689a3df9ec018639c6dc3f6724ea5acc37aa181ee0401c50e56c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39eb718aa1241006aaf5a3926b1b30a14c39970f37b7c70d9c305de36afd19a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactlySupported/Varianta5d06cc7769689a3df9ec018639c6dc3f6724ea5acc37aa181ee0401c50e56c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0513e35661123b854dd7249c99dee24468b8bca030885f32643e9456a5ca7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def integralPositiveLinearMap (μ : Measure X)
    [IsFiniteMeasureOnCompacts μ] : C_c(X, ℝ) →ₚ[ℝ] ℝ :=
  PositiveLinearMap.mk₀
    { toFun f := ∫ x, f x ∂μ,
      map_add' f g := integral_add' f.integrable g.integrable
      map_smul' c f := integral_smul c f }
    fun _ ↦ integral_nonneg

/-- Integration as a positive linear functional on `C_c(X, ℝ≥0)`. -/
-- Note: the default generated `simps` lemma uses `Subtype.val` instead of `NNReal.toReal`.
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactlySupported/Varianta5d06cc7769689a3df9ec018639c6dc3f6724ea5acc37aa181ee0401c50e56c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactlySupported/Varianta5d06cc7769689a3df9ec018639c6dc3f6724ea5acc37aa181ee0401c50e56c3.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be0d01dc83d4d400005f3b66040def6462bb745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
