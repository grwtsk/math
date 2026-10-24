# weight_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0c3b9b5-98d2-0d47-377e-a445c03b2559",
  "kind": "lemma",
  "lexical_name": "weight_hasDerivAt",
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
  "slug": "weight-hasderivat--021d8793e3b29f41f19064da",
  "source": {
    "blob": "25b29233df2adc8c915dabbce81ca8ccf6f08d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:021d8793e3b29f41f19064da0895d8dd9e16a32b08b818cc0d43808e2b249e11",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c3b9b5-98d2-0d47-377e-a445c03b2559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weight_hasDerivAt (N : ℕ) (s : ℂ) :
    HasDerivAt (weightC N) (weightSlope N s) s := by
  have h1 := ((hasDerivAt_id s).sub_const 1).div_const (2 : ℂ)
  have h2 := ((hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1)).div_const (12*(N : ℂ))
  have h4 := (product_hasDerivAt 4 s).div_const (720*(N : ℂ)^3)
  have h6 := (product_hasDerivAt 6 s).div_const (30240*(N : ℂ)^5)
  convert ((((hasDerivAt_const s (N : ℂ)).sub h1).add h2).sub h4).add h6 using 1 <;>
    simp only [weightC,weightSlope,product_four,product_six] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b29233df2adc8c915dabbce81ca8ccf6f08d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
