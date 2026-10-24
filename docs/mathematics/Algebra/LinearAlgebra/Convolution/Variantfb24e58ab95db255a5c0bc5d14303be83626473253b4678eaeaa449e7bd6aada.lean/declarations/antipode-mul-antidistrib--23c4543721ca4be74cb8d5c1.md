# antipode_mul_antidistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed9b167-3604-179d-efd4-d3a0b466724d",
  "kind": "lemma",
  "lexical_name": "antipode_mul_antidistrib",
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
  "slug": "antipode-mul-antidistrib--23c4543721ca4be74cb8d5c1",
  "source": {
    "blob": "821ec4e16ca3f4e5c3f82797c61e4de58f1414fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23c4543721ca4be74cb8d5c1581b06d4e30563a0cea9c64c4046a7ff3ddc8c2e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed9b167-3604-179d-efd4-d3a0b466724d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma antipode_mul_antidistrib (a b : A) : antipode R (a * b) = antipode R b * antipode R a := by
  exact congr($antipode_comp_mul_comp_comm (b ⊗ₜ a))

@[deprecated (since := "2026-06-05")] alias antipode_mul := antipode_mul_antidistrib

variable (R A) in
/-- The antipode of a commutative Hopf algebra as an anti-algebra hom. -/
@[expose, simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Convolution/Variantfb24e58ab95db255a5c0bc5d14303be83626473253b4678eaeaa449e7bd6aada.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821ec4e16ca3f4e5c3f82797c61e4de58f1414fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
