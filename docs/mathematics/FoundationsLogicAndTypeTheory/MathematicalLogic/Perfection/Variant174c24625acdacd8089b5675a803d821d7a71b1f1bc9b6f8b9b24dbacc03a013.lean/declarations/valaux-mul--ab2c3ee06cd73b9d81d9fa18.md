# valAux_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9163e97-83b7-8cfe-c79c-64857ed2d722",
  "kind": "theorem",
  "lexical_name": "valAux_mul",
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
  "slug": "valaux-mul--ab2c3ee06cd73b9d81d9fa18",
  "source": {
    "blob": "afa0eaab3bf91dc7ae4c2ba2164de4534c0109bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 753,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant174c24625acdacd8089b5675a803d821d7a71b1f1bc9b6f8b9b24dbacc03a013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab2c3ee06cd73b9d81d9fa1804971e24335e6aab553c39c02781336c0e6dafa3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant174c24625acdacd8089b5675a803d821d7a71b1f1bc9b6f8b9b24dbacc03a013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9163e97-83b7-8cfe-c79c-64857ed2d722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valAux_mul (f g : PreTilt O p) :
    valAux K v O p (f * g) = valAux K v O p f * valAux K v O p g := by
  obtain rfl | hf := eq_or_ne f 0
  · simp
  obtain rfl | hg := eq_or_ne g 0
  · simp
  obtain ⟨m, hm⟩ : ∃ n, coeff n f ≠ 0 := not_forall.1 fun h => hf <| Perfection.ext h
  obtain ⟨n, hn⟩ : ∃ n, coeff n g ≠ 0 := not_forall.1 fun h => hg <| Perfection.ext h
  replace hm := coeff_ne_zero_of_le hm (le_max_left m n)
  replace hn := coeff_ne_zero_of_le hn (le_max_right m n)
  have hfg : coeff (max m n + 1) (f * g) ≠ 0 := by
    rw [map_mul]
    refine ModP.mul_ne_zero_of_pow_p_ne_zero (hv := hv) ?_ ?_
    <;> rwa [coeff_pow_p]
  rw [valAux_eq hv (coeff_add_ne_zero hm 1),
      valAux_eq hv (coeff_add_ne_zero hn 1), valAux_eq hv hfg]
  rw [map_mul] at hfg ⊢; rw [ModP.preVal_mul hv hfg, mul_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant174c24625acdacd8089b5675a803d821d7a71b1f1bc9b6f8b9b24dbacc03a013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant174c24625acdacd8089b5675a803d821d7a71b1f1bc9b6f8b9b24dbacc03a013.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa0eaab3bf91dc7ae4c2ba2164de4534c0109bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
