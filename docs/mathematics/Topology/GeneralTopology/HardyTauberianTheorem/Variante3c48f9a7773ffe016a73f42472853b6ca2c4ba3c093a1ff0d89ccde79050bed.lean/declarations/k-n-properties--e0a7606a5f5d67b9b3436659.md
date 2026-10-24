# k_n_properties

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56a8a051-5b2c-feba-5b00-33be5a27ca52",
  "kind": "lemma",
  "lexical_name": "k_n_properties",
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
  "slug": "k-n-properties--e0a7606a5f5d67b9b3436659",
  "source": {
    "blob": "92450e6d270ed57bc84c7a370ba6a7d8660fd15f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0a7606a5f5d67b9b34366599d85fe2556cfa2eeaa1a58d567fb67a382667ac7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56a8a051-5b2c-feba-5b00-33be5a27ca52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma k_n_properties (ε : ℝ) (hε : 0 < ε) :
    Filter.IsBoundedUnder (· ≤ ·) Filter.atTop (fun (n : ℕ) => (n : ℝ) / Nat.floor (ε * n)) ∧
    ∀ᶠ n in Filter.atTop, 0 < Nat.floor (ε * n) := by
  constructor <;> norm_num [ Filter.IsBoundedUnder, Filter.IsBounded ];
  · use 2 / ε;
    exact ⟨ ⌈ε⁻¹ * 2⌉₊ + 1, fun n hn => by rw [ div_le_div_iff₀ ] <;> nlinarith [ Nat.le_ceil ( ε⁻¹ * 2 ), Nat.lt_of_ceil_lt hn, Nat.floor_le ( show 0 ≤ ε * ↑n by positivity ), Nat.lt_floor_add_one ( ε * ↑n ), mul_inv_cancel₀ ( ne_of_gt hε ), mul_div_cancel₀ ( 2 : ℝ ) hε.ne' ] ⟩;
  · exact ⟨ 1 / ε + 1, fun x hx => Nat.floor_pos.2 <| by nlinarith [ mul_div_cancel₀ 1 hε.ne' ] ⟩

/-
Helper sequence k_n for the proof, defined as max(1, floor(epsilon * n)).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92450e6d270ed57bc84c7a370ba6a7d8660fd15f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
