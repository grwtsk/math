# normal_of_index_eq_minFac_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fecbafc4-7eb3-1b88-b49b-ce3a85ba6d0d",
  "kind": "theorem",
  "lexical_name": "normal_of_index_eq_minFac_card",
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
  "slug": "normal-of-index-eq-minfac-card--c4fd37a4d97b24c9ef783ef4",
  "source": {
    "blob": "e765216569829347b80cb529d4d10f3fb4a74a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 53,
    "path": "GRWTSK/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4fd37a4d97b24c9ef783ef4bd71c311887109cb44fbc00a6a6d260e65bc0f0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fecbafc4-7eb3-1b88-b49b-ce3a85ba6d0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_of_index_eq_minFac_card (hHp : H.index = (Nat.card G).minFac) :
    H.Normal := by
  by_cases hG0 : Nat.card G = 0
  · rw [hG0, minFac_zero] at hHp
    exact normal_of_index_eq_two hHp
  by_cases hG1 : Nat.card G = 1
  · rw [hG1, minFac_one] at hHp
    exact normal_of_index_eq_one hHp
  suffices H.normalCore.relIndex H = 1 by
    convert! H.normalCore_normal
    exact le_antisymm (relIndex_eq_one.mp this) (normalCore_le H)
  have : Finite G := finite_of_card_ne_zero hG0
  have index_ne_zero : H.index ≠ 0 := index_ne_zero_of_finite
  rw [← mul_left_inj' index_ne_zero, one_mul, relIndex_mul_index H.normalCore_le]
  have hp : Nat.Prime H.index := hHp ▸ minFac_prime hG1
  have h : H.normalCore.index ∣ H.index ! := by
    rw [normalCore_eq_ker, index_ker, index_eq_card, ← Nat.card_perm]
    exact card_subgroup_dvd_card (toPermHom G (G ⧸ H)).range
  apply dvd_antisymm _ (index_dvd_of_le H.normalCore_le)
  rwa [← Coprime.dvd_mul_right, mul_factorial_pred hp.ne_zero]
  have hr1 : H.normalCore.index ≠ 1 := fun hr1 ↦ hp.ne_one <|
    Nat.eq_one_of_dvd_one (hr1 ▸ H.normalCore.index_dvd_of_le H.normalCore_le)
  rw [Nat.coprime_factorial_iff hr1]
  exact lt_of_lt_of_le (Nat.sub_one_lt hp.ne_zero) <|
    hHp ▸ minFac_le_of_dvd (Nat.minFac_prime hr1).two_le
      (dvd_trans (minFac_dvd H.normalCore.index) (H.normalCore.index_dvd_card))

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IndexNormal/Variantb690561bcc223976091e6a8b97ae7d75d144c4fc5e92fa34461663b9e947546f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e765216569829347b80cb529d4d10f3fb4a74a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
