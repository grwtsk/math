# abs_sin_eq_sqrt_one_sub_cos_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec0de52d-af5f-b7a1-f551-85357b279ab0",
  "kind": "theorem",
  "lexical_name": "abs_sin_eq_sqrt_one_sub_cos_sq",
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
  "slug": "abs-sin-eq-sqrt-one-sub-cos-sq--b0771e15cc976ecd5743d028",
  "source": {
    "blob": "92c7b2fe6c8723001dd7872e2fcd2745f9039c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1311,
    "line": 1308,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0771e15cc976ecd5743d0283f7d1770b0f7f7c6108fa0c29c0037586e8aa8d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0de52d-af5f-b7a1-f551-85357b279ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1308–1311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sin_eq_sqrt_one_sub_cos_sq (x : ℝ) : |sin x| = sqrt (1 - cos x ^ 2) := by
  rw [← sin_sq, sqrt_sq_eq_abs]
#align real.abs_sin_eq_sqrt_one_sub_cos_sq Real.abs_sin_eq_sqrt_one_sub_cos_sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean#L1308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c7b2fe6c8723001dd7872e2fcd2745f9039c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
