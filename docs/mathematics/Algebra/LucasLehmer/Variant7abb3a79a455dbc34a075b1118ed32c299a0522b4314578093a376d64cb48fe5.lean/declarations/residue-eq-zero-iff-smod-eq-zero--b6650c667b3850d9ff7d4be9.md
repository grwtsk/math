# residue_eq_zero_iff_sMod_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87361122d89fb6264c21270da45e4a66d24f9de6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19c40b71-0382-e292-5cd4-0095a5ea2134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36683aae-bc04-4456-5588-47329672cdd1",
  "kind": "theorem",
  "lexical_name": "residue_eq_zero_iff_sMod_eq_zero",
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
  "slug": "residue-eq-zero-iff-smod-eq-zero--b6650c667b3850d9ff7d4be9",
  "source": {
    "blob": "87361122d89fb6264c21270da45e4a66d24f9de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 165,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6650c667b3850d9ff7d4be93a86b81ed2287dfd805353839d07c378e71b1ce1",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36683aae-bc04-4456-5588-47329672cdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residue_eq_zero_iff_sMod_eq_zero (p : ℕ) (w : 1 < p) :
    lucasLehmerResidue p = 0 ↔ sMod p (p - 2) = 0 := by
  dsimp [lucasLehmerResidue]
  rw [sZMod_eq_sMod p]
  constructor
  · -- We want to use that fact that `0 ≤ s_mod p (p-2) < 2^p - 1`
    -- and `lucas_lehmer_residue p = 0 → 2^p - 1 ∣ s_mod p (p-2)`.
    intro h
    simp? [ZMod.intCast_zmod_eq_zero_iff_dvd] at h says
      simp only [ZMod.intCast_zmod_eq_zero_iff_dvd, ofNat_pos, pow_pos, cast_pred,
        cast_pow, cast_ofNat] at h
    apply Int.eq_zero_of_dvd_of_nonneg_of_lt _ _ h <;> clear h
    · exact sMod_nonneg _ (by positivity) _
    · exact sMod_lt _ (by positivity) _
  · intro h
    rw [h]
    simp

/-- **Lucas-Lehmer Test**: a Mersenne number `2^p-1` is prime if and only if
the Lucas-Lehmer residue `s p (p-2) % (2^p - 1)` is zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87361122d89fb6264c21270da45e4a66d24f9de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
