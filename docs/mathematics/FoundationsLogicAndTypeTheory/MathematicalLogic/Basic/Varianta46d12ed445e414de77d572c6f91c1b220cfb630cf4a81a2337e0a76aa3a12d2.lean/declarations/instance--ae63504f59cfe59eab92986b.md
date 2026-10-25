# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd07e3fa18f57882df4f9188c167fa656a33feab7518e2fcbabb1fd5ca30e3a6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ae63504f59cfe59eab92986b",
  "source": {
    "blob": "15b3375ff0df90c69ac361cf1919ca9ccf60b9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 575,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae63504f59cfe59eab92986b11ae525bf62fe7eef7c978e2fe46c9beae00ac58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd07e3fa18f57882df4f9188c167fa656a33feab7518e2fcbabb1fd5ca30e3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) of_covariant_right [IsRightCancelMul G]
    [LinearOrder G] [MulLeftStrictMono G] :
    TwoUniqueProds G where
  uniqueMul_of_one_lt_card {A B} hc := by
    obtain ⟨hA, hB, -⟩ := Nat.one_lt_mul_iff.mp hc
    rw [card_pos] at hA hB
    rw [← card_product] at hc
    obtain ⟨a0, ha0, b0, hb0, he0⟩ := mem_mul.mp (max'_mem _ <| hA.mul hB)
    obtain ⟨a1, ha1, b1, hb1, he1⟩ := mem_mul.mp (min'_mem _ <| hA.mul hB)
    have : UniqueMul A B a0 b0 := by
      intro a b ha hb he
      obtain hl | rfl | hl := lt_trichotomy b b0
      · exact ((he0 ▸ he ▸ mul_lt_mul_left' hl a).not_le <| le_max' _ _ <| mul_mem_mul ha hb0).elim
      · exact ⟨mul_right_cancel he, rfl⟩
      · exact ((he0 ▸ mul_lt_mul_left' hl a0).not_le <| le_max' _ _ <| mul_mem_mul ha0 hb).elim
    refine ⟨_, mk_mem_product ha0 hb0, _, mk_mem_product ha1 hb1, fun he ↦ ?_, this, ?_⟩
    · rw [Prod.mk_inj] at he; rw [he.1, he.2, he1] at he0
      obtain ⟨⟨a2, b2⟩, h2, hne⟩ := exists_ne_of_one_lt_card hc (a0, b0)
      rw [mem_product] at h2
      refine (min'_lt_max' _ (mul_mem_mul ha0 hb0) (mul_mem_mul h2.1 h2.2) fun he ↦ hne ?_).ne he0
      exact Prod.ext_iff.mpr (this h2.1 h2.2 he.symm)
    · intro a b ha hb he
      obtain hl | rfl | hl := lt_trichotomy b b1
      · exact ((he1 ▸ mul_lt_mul_left' hl a1).not_le <| min'_le _ _ <| mul_mem_mul ha1 hb).elim
      · exact ⟨mul_right_cancel he, rfl⟩
      · exact ((he1 ▸ he ▸ mul_lt_mul_left' hl a).not_le <| min'_le _ _ <| mul_mem_mul ha hb1).elim

open MulOpposite in
-- see Note [lower instance priority]
/-- This instance asserts that if `G` has a left-cancellative multiplication, a linear order, and
  multiplication is strictly monotone w.r.t. the first argument, then `G` has `TwoUniqueProds`. -/
@[to_additive
  "This instance asserts that if `G` has a left-cancellative addition, a linear order, and
  addition is strictly monotone w.r.t. the first argument, then `G` has `TwoUniqueSums`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b3375ff0df90c69ac361cf1919ca9ccf60b9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
