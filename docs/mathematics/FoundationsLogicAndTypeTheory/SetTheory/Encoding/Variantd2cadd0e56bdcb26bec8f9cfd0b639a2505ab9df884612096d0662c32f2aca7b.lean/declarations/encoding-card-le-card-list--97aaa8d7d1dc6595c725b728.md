# Encoding.card_le_card_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dd1b361-0a51-0874-4f00-e8e91c93d641",
  "kind": "theorem",
  "lexical_name": "Encoding.card_le_card_list",
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
  "slug": "encoding-card-le-card-list--97aaa8d7d1dc6595c725b728",
  "source": {
    "blob": "ba8f6f5ce099a8624b7bc223fb429627a65dc74f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97aaa8d7d1dc6595c725b728d9cccb9282da2c9e37f35ae5fc271765def19b74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dd1b361-0a51-0874-4f00-e8e91c93d641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Encoding.card_le_card_list {α : Type u} (e : Encoding.{u, v} α) :
    Cardinal.lift.{v} #α ≤ Cardinal.lift.{u} #(List e.Γ) :=
  Cardinal.lift_mk_le'.2 ⟨⟨e.encode, e.encode_injective⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8f6f5ce099a8624b7bc223fb429627a65dc74f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
