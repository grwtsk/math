# mul_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "deed71ffd85ff032cc36811c1f33775fa8f6c139",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 413,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce12cfc6648530087a7b13d59729c73bd605e71d6db0ba7a189287e5ffc4af6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f91a53f-fd2f-a97f-c87b-bf3c98c543ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30603384-f246-04c0-77df-1cbede864af8",
  "kind": "theorem",
  "lexical_name": "mul_def",
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
  "slug": "mul-def--8fb26c197aa5e84b71ffdc7d",
  "source": {
    "blob": "deed71ffd85ff032cc36811c1f33775fa8f6c139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantce12cfc6648530087a7b13d59729c73bd605e71d6db0ba7a189287e5ffc4af6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb26c197aa5e84b71ffdc7d0973df22e1ce6f71589ddf006759027a110a380d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantce12cfc6648530087a7b13d59729c73bd605e71d6db0ba7a189287e5ffc4af6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30603384-f246-04c0-77df-1cbede864af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_def (a b : Rat) :
    a * b = normalize (a.num * b.num) (a.den * b.den) (Nat.mul_ne_zero a.den_nz b.den_nz) := by
  show Rat.mul .. = _; delta Rat.mul; dsimp only
  have H1 : a.num.natAbs.gcd b.den ≠ 0 := Nat.gcd_ne_zero_right b.den_nz
  have H2 : b.num.natAbs.gcd a.den ≠ 0 := Nat.gcd_ne_zero_right a.den_nz
  simp only [Int.divExact_eq_tdiv, Nat.divExact_eq_div]
  rw [mk_eq_normalize, ← normalize_mul_right _ (Nat.mul_ne_zero H1 H2)]; congr 1
  · rw [Int.natCast_mul, ← Int.mul_assoc, Int.mul_right_comm (Int.tdiv ..),
      Int.tdiv_mul_cancel (Int.ofNat_dvd_left.2 <| Nat.gcd_dvd_left ..), Int.mul_assoc,
      Int.tdiv_mul_cancel (Int.ofNat_dvd_left.2 <| Nat.gcd_dvd_left ..)]
  · rw [← Nat.mul_assoc, Nat.mul_right_comm, Nat.mul_right_comm (_/_),
      Nat.div_mul_cancel (Nat.gcd_dvd_right ..), Nat.mul_assoc,
      Nat.div_mul_cancel (Nat.gcd_dvd_right ..)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantce12cfc6648530087a7b13d59729c73bd605e71d6db0ba7a189287e5ffc4af6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantce12cfc6648530087a7b13d59729c73bd605e71d6db0ba7a189287e5ffc4af6c.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deed71ffd85ff032cc36811c1f33775fa8f6c139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
