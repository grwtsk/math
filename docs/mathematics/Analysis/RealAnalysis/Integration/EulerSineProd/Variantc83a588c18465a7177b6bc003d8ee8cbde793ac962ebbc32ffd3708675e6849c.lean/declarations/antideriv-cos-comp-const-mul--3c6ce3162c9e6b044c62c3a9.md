# antideriv_cos_comp_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8a4687-d5a0-b5f8-a11e-82dbaa05e8cc",
  "kind": "theorem",
  "lexical_name": "antideriv_cos_comp_const_mul",
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
  "slug": "antideriv-cos-comp-const-mul--3c6ce3162c9e6b044c62c3a9",
  "source": {
    "blob": "588a6fd282bf917ecd8d0896ffd09b3e15366a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c6ce3162c9e6b044c62c3a924e120ab8f552b2fe2d96b1ff320222cc8579f23",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8a4687-d5a0-b5f8-a11e-82dbaa05e8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antideriv_cos_comp_const_mul (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun y : ℝ => Complex.sin (2 * z * y) / (2 * z)) (Complex.cos (2 * z * x)) x := by
  have a : HasDerivAt (fun y : ℂ => y * (2 * z)) _ x := hasDerivAt_mul_const _
  have b : HasDerivAt (fun y : ℂ => Complex.sin (y * (2 * z))) _ x :=
    HasDerivAt.comp (x : ℂ) (Complex.hasDerivAt_sin (x * (2 * z))) a
  have c := b.comp_ofReal.div_const (2 * z)
  field_simp at c; simp only [fun y => mul_comm y (2 * z)] at c
  exact c
#align euler_sine.antideriv_cos_comp_const_mul EulerSine.antideriv_cos_comp_const_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588a6fd282bf917ecd8d0896ffd09b3e15366a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
