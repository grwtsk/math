# analytic_generator_has_linear_operator_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "238d9fa2019c172305c471d42655127b6b2b02a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94fb2a8c-109d-671e-94d1-c63a46aff5ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ef956fb-2fef-d570-de56-c73cd2f60469",
  "kind": "theorem",
  "lexical_name": "analytic_generator_has_linear_operator_form",
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
  "slug": "analytic-generator-has-linear-operator-form--312ae737fa6666b5d83a870a",
  "source": {
    "blob": "238d9fa2019c172305c471d42655127b6b2b02a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:312ae737fa6666b5d83a870a21978cdba557a048b78da68a0230ae00b68016f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef956fb-2fef-d570-de56-c73cd2f60469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_generator_has_linear_operator_form
    (g : AnalyticGeneratorClass) :
    ∃ form : LinearAnalyticOperatorForm,
      analyticGeneratorLinearOperatorForm g = form :=
  ⟨analyticGeneratorLinearOperatorForm g, rfl⟩

section LocalFunctionalAnalyticContext

variable {K : Type u} [Semiring K]
variable {Global : Type v}
  [AddCommMonoid Global] [Module K Global] [TopologicalSpace Global]
variable {Local : Type w}
  [AddCommMonoid Local] [Module K Local] [TopologicalSpace Local]
variable {Coeff : Type x}
  [AddCommMonoid Coeff] [Module K Coeff] [TopologicalSpace Coeff]

/--
Local functional-analytic certificate context.

`Global` is the ambient vector space of objects.
`Local` is the restricted local function/section space.
`Coeff` is the coefficient space.
`restrict` is the restriction operator.
`synthesize` maps coefficients to local analytic representatives.
`analyticSubspace` is the analytic subspace inside `Local`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238d9fa2019c172305c471d42655127b6b2b02a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
