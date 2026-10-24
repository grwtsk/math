# normalize_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25e60337418d159da20aba20848fa063a6b4ae37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f116a85-f7ed-7b5b-f90a-fd11374dd4f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac1be4c5-9d7d-473c-3c0c-2795f274a0fe",
  "kind": "theorem",
  "lexical_name": "normalize_eq_iff",
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
  "slug": "normalize-eq-iff--4a096257c080110e3d0b9f78",
  "source": {
    "blob": "25e60337418d159da20aba20848fa063a6b4ae37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a096257c080110e3d0b9f78608e044c045ab3fb4a8854805a56c403a2ca9c5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1be4c5-9d7d-473c-3c0c-2795f274a0fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_eq_iff (z₁ : d₁ ≠ 0) (z₂ : d₂ ≠ 0) :
    normalize n₁ d₁ z₁ = normalize n₂ d₂ z₂ ↔ n₁ * d₂ = n₂ * d₁ := by
  constructor <;> intro h
  · simp only [normalize_eq, mk'.injEq] at h
    have hn₁ := Int.ofNat_dvd_left.2 <| Nat.gcd_dvd_left n₁.natAbs d₁
    have hn₂ := Int.ofNat_dvd_left.2 <| Nat.gcd_dvd_left n₂.natAbs d₂
    have hd₁ := Int.ofNat_dvd.2 <| Nat.gcd_dvd_right n₁.natAbs d₁
    have hd₂ := Int.ofNat_dvd.2 <| Nat.gcd_dvd_right n₂.natAbs d₂
    rw [← Int.ediv_mul_cancel (Int.dvd_trans hd₂ (Int.dvd_mul_left ..)),
      Int.mul_ediv_assoc _ hd₂, ← Int.natCast_ediv, ← h.2, Int.natCast_ediv,
      ← Int.mul_ediv_assoc _ hd₁, Int.mul_ediv_assoc' _ hn₁,
      Int.mul_right_comm, h.1, Int.ediv_mul_cancel hn₂]
  · rw [← normalize_mul_right _ z₂, ← normalize_mul_left z₂ z₁, Int.mul_comm d₁, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25e60337418d159da20aba20848fa063a6b4ae37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
