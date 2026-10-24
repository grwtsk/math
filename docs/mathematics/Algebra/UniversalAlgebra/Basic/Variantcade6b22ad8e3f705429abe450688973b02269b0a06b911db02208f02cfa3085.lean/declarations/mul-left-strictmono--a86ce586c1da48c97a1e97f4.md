# mul_left_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b683f13950cc66638a559b4fcb74c65a9deabe4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cade6b22ad8e3f705429abe450688973b02269b0a06b911db02208f02cfa3085.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89afbc77-504e-55df-e8b3-37f6b4c3ef1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eddfc5ae-635b-90d7-91f6-fe2037bf48c6",
  "kind": "lemma",
  "lexical_name": "mul_left_strictMono",
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
  "slug": "mul-left-strictmono--a86ce586c1da48c97a1e97f4",
  "source": {
    "blob": "b683f13950cc66638a559b4fcb74c65a9deabe4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 370,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcade6b22ad8e3f705429abe450688973b02269b0a06b911db02208f02cfa3085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a86ce586c1da48c97a1e97f420d219994fb44d2424fea92d4577edd28efc0d6b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantcade6b22ad8e3f705429abe450688973b02269b0a06b911db02208f02cfa3085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eddfc5ae-635b-90d7-91f6-fe2037bf48c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_left_strictMono (ha : a ≠ 0) (h_top : a ≠ ⊤) : StrictMono (a * ·) := by
  lift a to ℕ using h_top
  intro x y hxy
  induction x with
  | top => simp at hxy
  | coe x =>
  induction y with
  | top =>
    simp only [mul_top ha, ← ENat.coe_mul]
    exact coe_lt_top (a * x)
  | coe y =>
  simp only
  rw [← ENat.coe_mul, ← ENat.coe_mul, ENat.coe_lt_coe]
  rw [ENat.coe_lt_coe] at hxy
  exact Nat.mul_lt_mul_of_pos_left hxy (Nat.pos_of_ne_zero (by simpa using ha))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantcade6b22ad8e3f705429abe450688973b02269b0a06b911db02208f02cfa3085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcade6b22ad8e3f705429abe450688973b02269b0a06b911db02208f02cfa3085.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b683f13950cc66638a559b4fcb74c65a9deabe4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
