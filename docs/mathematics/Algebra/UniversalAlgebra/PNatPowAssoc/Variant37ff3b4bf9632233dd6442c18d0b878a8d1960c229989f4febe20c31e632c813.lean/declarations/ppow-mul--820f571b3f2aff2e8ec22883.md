# ppow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b34bea0d-57a4-5986-db23-38eca5a254b6",
  "kind": "theorem",
  "lexical_name": "ppow_mul",
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
  "slug": "ppow-mul--820f571b3f2aff2e8ec22883",
  "source": {
    "blob": "8aaa8476fba78ba72c7b64f1ad5956d28e139efe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 76,
    "path": "GRWTSK/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820f571b3f2aff2e8ec228836046198b955bdc9830dd8d43e6765bdb9e7f0baf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34bea0d-57a4-5986-db23-38eca5a254b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ppow_mul (x : M) (m n : ℕ+) : x ^ (m * n) = (x ^ m) ^ n := by
  induction n with
  | one => rw [ppow_one, mul_one]
  | succ k hk => rw [ppow_add, ppow_one, mul_add, ppow_add, mul_one, hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aaa8476fba78ba72c7b64f1ad5956d28e139efe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
