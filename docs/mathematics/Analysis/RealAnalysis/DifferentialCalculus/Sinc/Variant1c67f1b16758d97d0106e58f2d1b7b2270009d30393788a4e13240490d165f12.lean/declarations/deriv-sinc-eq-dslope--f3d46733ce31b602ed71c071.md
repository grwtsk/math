# deriv_sinc_eq_dslope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fb106fd-d5cb-50a9-5aba-6d92e6559243",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3010f68-5b9b-a58c-77fc-00b1995f80b5",
  "kind": "theorem",
  "lexical_name": "deriv_sinc_eq_dslope",
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
  "slug": "deriv-sinc-eq-dslope--f3d46733ce31b602ed71c071",
  "source": {
    "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 341,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d46733ce31b602ed71c071c6d00da2d86d924e2d791d8345ca04415a08c79a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3010f68-5b9b-a58c-77fc-00b1995f80b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_sinc_eq_dslope : deriv sinc = dslope (cos - sinc) 0 := by
  ext x
  by_cases hx : x = 0
  · -- At x = 0
    simp only [hx, dslope_same, deriv_sinc_zero]
    simp only [deriv_sub, differentiableAt_cos, differentiableAt_sinc_zero, deriv_cos, sin_zero,
      deriv_sinc_zero, sub_zero, neg_zero]
  · -- At x ≠ 0
    rw [dslope_of_ne _ hx, slope, vsub_eq_sub]
    simp only [Pi.sub_apply, cos_zero, sinc_zero, sub_self, sub_zero]
    rw [(hasDerivAt_sinc_of_ne_zero hx).deriv]
    rw [sinc_of_ne_zero hx, smul_eq_mul]
    field_simp

/-- sinc is smooth at every nonzero point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c155e15f1b59fe5465099559191856416a60cfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
