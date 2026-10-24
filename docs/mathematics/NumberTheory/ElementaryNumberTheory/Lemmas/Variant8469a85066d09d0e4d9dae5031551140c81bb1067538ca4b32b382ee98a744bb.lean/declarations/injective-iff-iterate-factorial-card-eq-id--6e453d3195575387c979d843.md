# injective_iff_iterate_factorial_card_eq_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ddfa514-ddd9-7aef-bc06-84f26a3c9617",
  "kind": "theorem",
  "lexical_name": "injective_iff_iterate_factorial_card_eq_id",
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
  "slug": "injective-iff-iterate-factorial-card-eq-id--6e453d3195575387c979d843",
  "source": {
    "blob": "255deefdb5b81455b21f0a6c00451c598bcd551c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e453d3195575387c979d84392870742c2873cabd197c4e1eb6b19bb2413a7b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ddfa514-ddd9-7aef-bc06-84f26a3c9617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_iff_iterate_factorial_card_eq_id [Fintype α] :
    Injective f ↔ f^[(card α)!] = id := by
  simp only [injective_iff_periodicPts_eq_univ, mem_periodicPts_iff_isPeriodicPt_factorial_card,
    funext_iff, eq_univ_iff_forall, IsPeriodicPt, id, IsFixedPt]

end Fintype

end Function

namespace Function

section Prod

variable {α β : Type*} {f : α → α} {g : β → β} {x : α × β} {m n : ℕ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `255deefdb5b81455b21f0a6c00451c598bcd551c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
