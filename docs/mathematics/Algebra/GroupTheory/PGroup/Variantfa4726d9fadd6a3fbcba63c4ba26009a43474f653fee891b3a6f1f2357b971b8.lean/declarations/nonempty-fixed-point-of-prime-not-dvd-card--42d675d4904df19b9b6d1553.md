# nonempty_fixed_point_of_prime_not_dvd_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64f7bd25-0c56-d0c3-0136-c2181ad4db5a",
  "kind": "theorem",
  "lexical_name": "nonempty_fixed_point_of_prime_not_dvd_card",
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
  "slug": "nonempty-fixed-point-of-prime-not-dvd-card--42d675d4904df19b9b6d1553",
  "source": {
    "blob": "ef03c5da60a1e0d7f56c1f08d7349ec8a04482a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42d675d4904df19b9b6d1553e179d68b5d9cd4d953aa32ff69de13713c252bea",
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

Occurrence: `result:64f7bd25-0c56-d0c3-0136-c2181ad4db5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_fixed_point_of_prime_not_dvd_card (hpα : ¬p ∣ card α) [Finite (fixedPoints G α)] :
    (fixedPoints G α).Nonempty :=
  @Set.nonempty_of_nonempty_subtype _ _
    (by
      cases nonempty_fintype (fixedPoints G α)
      rw [← card_pos_iff, pos_iff_ne_zero]
      contrapose! hpα
      rw [← Nat.modEq_zero_iff_dvd, ← hpα]
      exact hG.card_modEq_card_fixedPoints α)
#align is_p_group.nonempty_fixed_point_of_prime_not_dvd_card IsPGroup.nonempty_fixed_point_of_prime_not_dvd_card

/-- If a p-group acts on `α` and the cardinality of `α` is a multiple
  of `p`, and the action has one fixed point, then it has another fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PGroup/Variantfa4726d9fadd6a3fbcba63c4ba26009a43474f653fee891b3a6f1f2357b971b8.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef03c5da60a1e0d7f56c1f08d7349ec8a04482a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
