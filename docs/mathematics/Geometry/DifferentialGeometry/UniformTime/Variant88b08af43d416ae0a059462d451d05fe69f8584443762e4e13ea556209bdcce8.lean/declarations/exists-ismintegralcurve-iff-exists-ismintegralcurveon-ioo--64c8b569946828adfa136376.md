# exists_isMIntegralCurve_iff_exists_isMIntegralCurveOn_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed0b40f7-65ae-4b82-f987-db7929f97bee",
  "kind": "lemma",
  "lexical_name": "exists_isMIntegralCurve_iff_exists_isMIntegralCurveOn_Ioo",
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
  "slug": "exists-ismintegralcurve-iff-exists-ismintegralcurveon-ioo--64c8b569946828adfa136376",
  "source": {
    "blob": "b01418a834361d0988a6855f35212635e34fab65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64c8b569946828adfa1363766a4b9bd36548e6e8b28246419b0378644ef02e75",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed0b40f7-65ae-4b82-f987-db7929f97bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isMIntegralCurve_iff_exists_isMIntegralCurveOn_Ioo [BoundarylessManifold I M]
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M))) (x : M) :
    (∃ γ, γ 0 = x ∧ IsMIntegralCurve γ v) ↔
      ∀ a, ∃ γ, γ 0 = x ∧ IsMIntegralCurveOn γ v (Ioo (-a) a) := by
  refine ⟨fun ⟨γ, h1, h2⟩ _ ↦ ⟨γ, h1, h2.isMIntegralCurveOn _⟩, fun h ↦ ?_⟩
  choose γ hγx hγ using h
  exact ⟨fun t ↦ γ (|t| + 1) t, hγx (|0| + 1),
    isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo hv γ hγx (fun a _ ↦  hγ a)⟩

/-- Let `γ` and `γ'` be integral curves defined on `Ioo a b` and `Ioo a' b'`, respectively. Then,
`piecewise (Ioo a b) γ γ'` is equal to `γ` and `γ'` in their respective domains.
`Set.piecewise_eqOn` shows the equality for `γ` by definition, while this lemma shows the equality
for `γ'` by the uniqueness of integral curves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b01418a834361d0988a6855f35212635e34fab65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
