# a_id_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e68189e8-cd61-73d4-f6ec-90a9f61b1458",
  "kind": "theorem",
  "lexical_name": "a_id_helper",
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
  "slug": "a-id-helper--d707c2df8d0e2c62e13890e1",
  "source": {
    "blob": "d296139b4fae7418e5ceb12be7223ca02424d031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 135,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d707c2df8d0e2c62e13890e1c45b3a16584c7e1c7e2bcab35d9f9e779ec46511",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e68189e8-cd61-73d4-f6ec-90a9f61b1458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem a_id_helper {a b : ℕ} (ha : 2 ≤ a) (hb : 2 ≤ b) : 2 ≤ (a ^ b - 1) / (a - 1) := by
  change 1 < _
  have h₁ : a - 1 ∣ a ^ b - 1 := by simpa only [one_pow] using nat_sub_dvd_pow_sub_pow a 1 b
  rw [Nat.lt_div_iff_mul_lt' h₁, mul_one, tsub_lt_tsub_iff_right (Nat.le_of_succ_le ha)]
  exact lt_self_pow₀ (Nat.lt_of_succ_le ha) hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d296139b4fae7418e5ceb12be7223ca02424d031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
