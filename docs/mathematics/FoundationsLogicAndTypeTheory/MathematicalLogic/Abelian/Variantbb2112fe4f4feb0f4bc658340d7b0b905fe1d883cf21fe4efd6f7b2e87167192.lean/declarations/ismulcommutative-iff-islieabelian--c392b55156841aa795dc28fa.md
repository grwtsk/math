# isMulCommutative_iff_isLieAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fadac19a-fe5a-da65-38e2-b056247bd87c",
  "kind": "theorem",
  "lexical_name": "isMulCommutative_iff_isLieAbelian",
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
  "slug": "ismulcommutative-iff-islieabelian--c392b55156841aa795dc28fa",
  "source": {
    "blob": "2f80d97203b5dee61a6e48759746642c5befc84d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c392b55156841aa795dc28fa827411a343252cfceab82c8771b3d6a9ded88524",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fadac19a-fe5a-da65-38e2-b056247bd87c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMulCommutative_iff_isLieAbelian {A : Type v} [Ring A] :
    IsMulCommutative A ↔ IsLieAbelian A := by
  have : IsLieAbelian A ↔ ∀ a b : A, ⁅a, b⁆ = 0 := ⟨(·.trivial), (⟨·⟩)⟩
  simp [this, isMulCommutative_iff, LieRing.of_associative_ring_bracket, sub_eq_zero]

@[deprecated (since := "2026-04-01")]
alias commutative_ring_iff_abelian_lie_ring := isMulCommutative_iff_isLieAbelian

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f80d97203b5dee61a6e48759746642c5befc84d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
