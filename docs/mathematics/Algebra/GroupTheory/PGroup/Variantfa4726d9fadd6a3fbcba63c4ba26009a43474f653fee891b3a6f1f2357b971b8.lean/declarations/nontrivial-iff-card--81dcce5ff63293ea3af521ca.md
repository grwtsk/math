# nontrivial_iff_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:428c3c19-64e2-8625-3270-735bf924a297",
  "kind": "theorem",
  "lexical_name": "nontrivial_iff_card",
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
  "slug": "nontrivial-iff-card--81dcce5ff63293ea3af521ca",
  "source": {
    "blob": "ef03c5da60a1e0d7f56c1f08d7349ec8a04482a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81dcce5ff63293ea3af521caaf83d7a45dff0955dfb38b85a501267fdcdfe607",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428c3c19-64e2-8625-3270-735bf924a297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_iff_card [Fintype G] : Nontrivial G ↔ ∃ n > 0, card G = p ^ n :=
  ⟨fun hGnt =>
    let ⟨k, hk⟩ := iff_card.1 hG
    ⟨k,
      Nat.pos_of_ne_zero fun hk0 => by
        rw [hk0, pow_zero] at hk; exact Fintype.one_lt_card.ne' hk,
      hk⟩,
    fun ⟨k, hk0, hk⟩ =>
    one_lt_card_iff_nontrivial.1 <|
      hk.symm ▸ one_lt_pow (Fact.out (p := p.Prime)).one_lt (ne_of_gt hk0)⟩
#align is_p_group.nontrivial_iff_card IsPGroup.nontrivial_iff_card

variable {α : Type*} [MulAction G α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef03c5da60a1e0d7f56c1f08d7349ec8a04482a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
