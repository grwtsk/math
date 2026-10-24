# card_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f5a2fbe-f2c9-a02c-e390-c699219b8ba5",
  "kind": "theorem",
  "lexical_name": "card_le_one_iff",
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
  "slug": "card-le-one-iff--8c4b60451f97cb9cd197b599",
  "source": {
    "blob": "ae3995a5ad5705e6ebc722e07935000ddea506e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4b60451f97cb9cd197b599f50d1e2987332921f0ad4c190c738e6d74521a7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f5a2fbe-f2c9-a02c-e390-c699219b8ba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_one_iff : card α ≤ 1 ↔ ∀ a b : α, a = b :=
  let n := card α
  have hn : n = card α := rfl
  match n, hn with
  | 0, ha =>
    ⟨fun _h => fun a => (card_eq_zero_iff.1 ha.symm).elim a, fun _ => ha ▸ Nat.le_succ _⟩
  | 1, ha =>
    ⟨fun _h => fun a b => by
      let ⟨x, hx⟩ := card_eq_one_iff.1 ha.symm
      rw [hx a, hx b], fun _ => ha ▸ le_rfl⟩
  | n + 2, ha =>
    ⟨fun h => False.elim <| by rw [← ha] at h; cases h with | step h => cases h; , fun h =>
      card_unit ▸ card_le_of_injective (fun _ => ()) fun _ _ _ => h _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3995a5ad5705e6ebc722e07935000ddea506e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
