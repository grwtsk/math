# isNilpotent_pow_X_mul_C_of_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecee417a-08f2-a825-458a-5d9f3731a8e7",
  "kind": "lemma",
  "lexical_name": "isNilpotent_pow_X_mul_C_of_isNilpotent",
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
  "slug": "isnilpotent-pow-x-mul-c-of-isnilpotent--a7978e6956c2cc8f93c78249",
  "source": {
    "blob": "9760932f03826c06a559d6ec40aa400fa963e6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7978e6956c2cc8f93c782494ff3c38758b4abf73cedfaf5f017018ea48bf23e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecee417a-08f2-a825-458a-5d9f3731a8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_pow_X_mul_C_of_isNilpotent (n : ℕ) (hnil : IsNilpotent r) :
    IsNilpotent (X ^ n * (C r)) := by
  rw [commute_X_pow]
  exact isNilpotent_C_mul_pow_X_of_isNilpotent n hnil

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9760932f03826c06a559d6ec40aa400fa963e6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
