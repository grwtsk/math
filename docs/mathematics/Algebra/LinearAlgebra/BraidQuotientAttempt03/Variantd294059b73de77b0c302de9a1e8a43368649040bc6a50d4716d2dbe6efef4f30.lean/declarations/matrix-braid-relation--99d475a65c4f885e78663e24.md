# matrix_braid_relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9df2e3e4-b76a-ed1b-44b1-ffed4ced8a0e",
  "kind": "theorem",
  "lexical_name": "matrix_braid_relation",
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
  "slug": "matrix-braid-relation--99d475a65c4f885e78663e24",
  "source": {
    "blob": "ca16fe2280ebe8210cf9fd28d4cfc0b5ca8dc1ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d475a65c4f885e78663e242f76bf798a05b465109b97ceaa0fe7d69306b4a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df2e3e4-b76a-ed1b-44b1-ffed4ced8a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_braid_relation :
    upperGenerator*lowerGenerator*upperGenerator =
      lowerGenerator*upperGenerator*lowerGenerator := by
  apply Subtype.ext
  change ((!![1,1;0,1] : Matrix (Fin 2) (Fin 2) ℤ)*!![1,0;-1,1]*!![1,1;0,1]) =
    !![1,0;-1,1]*!![1,1;0,1]*!![1,0;-1,1]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply,Fin.sum_univ_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca16fe2280ebe8210cf9fd28d4cfc0b5ca8dc1ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
