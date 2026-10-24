# finrank_range_truncPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38c2515e-9d8f-678c-ca8c-e2e2eb313a66",
  "kind": "lemma",
  "lexical_name": "finrank_range_truncPos",
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
  "slug": "finrank-range-truncpos--72fd52eb6b5a86ede28c28dd",
  "source": {
    "blob": "12a8ff2a1aa06d53d6659ae1272c87d869f80d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 297,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72fd52eb6b5a86ede28c28dd5f90b583098abb99f8e0ef7b3b2bb81ecba787a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c2515e-9d8f-678c-ca8c-e2e2eb313a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_range_truncPos {A : Matrix n n 𝕜} (hA : A.IsHermitian) (θ : ℝ) :
    Module.finrank 𝕜 (LinearMap.range (specMap hA (fun t => (t - θ)⁺)).mulVecLin)
      = posIndexAbove hA θ := by
  show (specMap hA (fun t => (t - θ)⁺)).rank = _
  rw [rank_specMap]; unfold posIndexAbove
  congr 1; ext i
  simp only [mem_filter, mem_univ, true_and, ne_eq, posPart_eq_zero, not_le,
    sub_pos]

/-- The dimension of `range A₊` is `posIndex hA`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Variantef09e829694f13676bedea413e3ae16c9d70ed1a5916972b2cec0839162044ee.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a8ff2a1aa06d53d6659ae1272c87d869f80d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
