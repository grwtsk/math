# subgroup_eq_top_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a72ebbe-f8c1-73bd-cc2f-0458f79fc60a",
  "kind": "theorem",
  "lexical_name": "subgroup_eq_top_of_nontrivial",
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
  "slug": "subgroup-eq-top-of-nontrivial--0772a541d001f7f5f1628023",
  "source": {
    "blob": "b3c89c327850069da2663c44090fac53c37ff192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 301,
    "path": "GRWTSK/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0772a541d001f7f5f16280238489a57a8f03ed754fecbb6addd3e8e68269838c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a72ebbe-f8c1-73bd-cc2f-0458f79fc60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subgroup_eq_top_of_nontrivial [Finite α] (hα : Nat.card α ≤ 2) (hG : Nontrivial G) :
    G = (⊤ : Subgroup (Perm α)) := by
  apply Subgroup.eq_top_of_le_card
  rw [Nat.card_perm]
  apply (Nat.factorial_le hα).trans
  rwa [Nat.factorial_two, Nat.succ_le_iff, one_lt_card_iff_ne_bot, ← nontrivial_iff_ne_bot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c89c327850069da2663c44090fac53c37ff192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
