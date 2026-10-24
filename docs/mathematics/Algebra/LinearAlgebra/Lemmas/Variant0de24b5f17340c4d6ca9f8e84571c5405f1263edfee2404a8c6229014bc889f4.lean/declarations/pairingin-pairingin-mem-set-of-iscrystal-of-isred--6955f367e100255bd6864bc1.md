# pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af633ba5-0a1e-98ed-c898-bc545cfb3271",
  "kind": "lemma",
  "lexical_name": "pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed",
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
  "slug": "pairingin-pairingin-mem-set-of-iscrystal-of-isred--6955f367e100255bd6864bc1",
  "source": {
    "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6955f367e100255bd6864bc18fe8ad3af01e78b44878a0b2def4fafd0ae48199",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af633ba5-0a1e-98ed-c898-bc545cfb3271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed [P.IsReduced] :
    (P.pairingIn ℤ i j, P.pairingIn ℤ j i) ∈
      ({(0, 0), (1, 1), (-1, -1), (1, 2), (2, 1), (-1, -2), (-2, -1), (1, 3), (3, 1), (-1, -3),
        (-3, -1), (2, 2), (-2, -2)} : Set (ℤ × ℤ)) := by
  have := P.reflexive_left
  rcases eq_or_ne i j with rfl | h₁; · simp
  rcases eq_or_ne (α i) (-α j) with h₂ | h₂; · aesop
  have aux₁ := P.pairingIn_pairingIn_mem_set_of_isCrystallographic i j
  have aux₂ : P.pairingIn ℤ i j * P.pairingIn ℤ j i ≠ 4 := P.coxeterWeightIn_ne_four ℤ h₁ h₂
  aesop -- #24551 (this should be faster)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
