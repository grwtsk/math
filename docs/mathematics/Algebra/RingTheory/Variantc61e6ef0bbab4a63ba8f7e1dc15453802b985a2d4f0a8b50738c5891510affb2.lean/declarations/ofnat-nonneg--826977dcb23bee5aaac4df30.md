# ofNat_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b24e73b66a5f3a6042a59f8f969d051cd5fabcb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a73ec1ee-05fa-459d-73f0-95faddd74182",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38be6d23-32d4-1808-3494-8cbf480fac3a",
  "kind": "theorem",
  "lexical_name": "ofNat_nonneg",
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
  "slug": "ofnat-nonneg--826977dcb23bee5aaac4df30",
  "source": {
    "blob": "b24e73b66a5f3a6042a59f8f969d051cd5fabcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:826977dcb23bee5aaac4df30cea2c3d1c5500ddd16f2483a2b2f486db0640bde",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38be6d23-32d4-1808-3494-8cbf480fac3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_nonneg (x : Nat) : (OfNat.ofNat x : R) ≥ 0 := by
  induction x
  next => simp [OfNat.ofNat, Zero.zero]
  next n ih =>
    have := OrderedRing.zero_lt_one (R := R)
    rw [Semiring.ofNat_succ]
    replace ih := OrderedAdd.add_le_left ih 1
    rw [AddCommMonoid.zero_add] at ih
    have := Preorder.lt_of_lt_of_le this ih
    exact Preorder.le_of_lt this

attribute [local instance] Semiring.natCast Ring.intCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b24e73b66a5f3a6042a59f8f969d051cd5fabcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
