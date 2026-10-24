# exists_equipartition_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41391bdf-8f80-8dd1-6cd8-7ffec6a7a74e",
  "kind": "theorem",
  "lexical_name": "exists_equipartition_card_eq",
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
  "slug": "exists-equipartition-card-eq--9a80fda64a903316bda56127",
  "source": {
    "blob": "354810ffd425ba9530a9766bb5820a6e96100598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a80fda64a903316bda5612777f38bb8311552327a34c4af1cf7c084fa99d278",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41391bdf-8f80-8dd1-6cd8-7ffec6a7a74e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_equipartition_card_eq (hn : n ≠ 0) (hs : n ≤ #s) :
    ∃ P : Finpartition s, P.IsEquipartition ∧ #P.parts = n := by
  rw [← pos_iff_ne_zero] at hn
  have : (n - #s % n) * (#s / n) + #s % n * (#s / n + 1) = #s := by
    rw [tsub_mul, mul_add, ← add_assoc,
      tsub_add_cancel_of_le (Nat.mul_le_mul_right _ (mod_lt _ hn).le), mul_one, add_comm,
      mod_add_div]
  refine
    ⟨(indiscrete (card_pos.1 <| hn.trans_le hs).ne_empty).equitabilise this,
      equitabilise_isEquipartition, ?_⟩
  rw [card_parts_equitabilise _ _ (Nat.div_pos hs hn).ne', tsub_add_cancel_of_le (mod_lt _ hn).le]

end Finpartition
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `354810ffd425ba9530a9766bb5820a6e96100598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
