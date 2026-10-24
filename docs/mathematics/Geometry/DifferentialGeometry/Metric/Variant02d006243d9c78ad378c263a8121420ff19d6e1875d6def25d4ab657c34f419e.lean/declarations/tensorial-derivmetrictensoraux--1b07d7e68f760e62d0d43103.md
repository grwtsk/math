# tensorial_derivMetricTensorAux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12cfd9a70cebfb2b92ff634e6512c3d3121b78c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4722bd5f-d8e9-c8c9-0765-2954ac6d5747",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b45d7668-b708-c570-b900-2014b148dd12",
  "kind": "theorem",
  "lexical_name": "tensorial_derivMetricTensorAux₁",
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
  "slug": "tensorial-derivmetrictensoraux--1b07d7e68f760e62d0d43103",
  "source": {
    "blob": "12cfd9a70cebfb2b92ff634e6512c3d3121b78c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b07d7e68f760e62d0d43103538cf5ffbdde4886dfa64d4b27d7a95e7f44e203",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b45d7668-b708-c570-b900-2014b148dd12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorial_derivMetricTensorAux₁ (τ : Π x, V x) (hτ : MDiffAt (T% τ) x) :
    TensorialAt I F (derivMetricTensorAux I cov · τ x) x where
  smul hf hσ := by
    ext X₀
    simp [mvfderiv_fun_mul hf (hσ.inner_bundle hτ),
      cov.isCovariantDerivativeOn.leibniz hσ hf, inner_add_left, inner_smul_left]
    ring
  add hσ hσ' := by
    ext X₀
    simp [mvfderiv_fun_add (hσ.inner_bundle hτ) (hσ'.inner_bundle hτ),
      cov.isCovariantDerivativeOn.add hσ hσ', inner_add_left]
    abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12cfd9a70cebfb2b92ff634e6512c3d3121b78c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
