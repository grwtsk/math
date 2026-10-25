# of_mulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93e5bd45-1b1e-71dd-8c0d-d2c9a87ecab3",
  "kind": "theorem",
  "lexical_name": "of_mulOpposite",
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
  "slug": "of-mulopposite--a583baaa016c09cda0fdf9c9",
  "source": {
    "blob": "45227d096bcf94c649f1c8f19b6b373eb4159abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 561,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant587bf925cc8973c34f0931e05c456c3746256b94775d9eec26b580bcde022afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a583baaa016c09cda0fdf9c9294f533ec4e281e654a09a278574a3715a520a42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant587bf925cc8973c34f0931e05c456c3746256b94775d9eec26b580bcde022afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93e5bd45-1b1e-71dd-8c0d-d2c9a87ecab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mulOpposite (h : TwoUniqueProds Gᵐᵒᵖ) : TwoUniqueProds G where
  uniqueMul_of_one_lt_card hc := by
    let f : G ↪ Gᵐᵒᵖ := ⟨op, op_injective⟩
    rw [← card_map f, ← card_map f, mul_comm] at hc
    obtain ⟨p1, h1, p2, h2, hne, hu1, hu2⟩ := h.uniqueMul_of_one_lt_card hc
    simp_rw [mem_product] at h1 h2 ⊢
    refine ⟨(_, _), ⟨?_, ?_⟩, (_, _), ⟨?_, ?_⟩, ?_, hu1.of_mulOpposite, hu2.of_mulOpposite⟩
    pick_goal 5
    · contrapose! hne; rw [Prod.ext_iff] at hne ⊢
      exact ⟨unop_injective hne.2, unop_injective hne.1⟩
    all_goals apply (mem_map' f).mp
    exacts [h1.2, h1.1, h2.2, h2.1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant587bf925cc8973c34f0931e05c456c3746256b94775d9eec26b580bcde022afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant587bf925cc8973c34f0931e05c456c3746256b94775d9eec26b580bcde022afa.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45227d096bcf94c649f1c8f19b6b373eb4159abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
