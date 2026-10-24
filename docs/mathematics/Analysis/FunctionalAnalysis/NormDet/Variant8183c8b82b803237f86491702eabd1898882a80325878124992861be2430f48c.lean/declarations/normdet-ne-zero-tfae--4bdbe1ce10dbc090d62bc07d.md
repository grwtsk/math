# normDet_ne_zero_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15518bc2-59b5-97ef-6aa4-6636a6f1d480",
  "kind": "theorem",
  "lexical_name": "normDet_ne_zero_tfae",
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
  "slug": "normdet-ne-zero-tfae--4bdbe1ce10dbc090d62bc07d",
  "source": {
    "blob": "322ac51cb5f120cd8166341a576cd6eb59cb3a63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 147,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bdbe1ce10dbc090d62bc07d106f1ff6bcfa6faadb24c4cfce9f05a07a2b9959",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15518bc2-59b5-97ef-6aa4-6636a6f1d480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normDet_ne_zero_tfae (f : U →ₗ[𝕜] V) :
    List.TFAE [f.normDet ≠ 0,
      f.ker = ⊥,
      finrank 𝕜 f.range = finrank 𝕜 U,
      Nonempty (OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 f.range),
      Function.Injective f] := by
  tfae_have 1 ↔ 2 := f.normDet_eq_zero_iff_ker_ne_bot.not_left
  tfae_have 1 ↔ 3 := f.normDet_eq_zero_iff_rank_range_ne.not_left
  tfae_have 3 → 4 := by
    intro h
    rw [← h]
    exact ⟨stdOrthonormalBasis 𝕜 f.range⟩
  tfae_have 4 → 3 := by
    rintro ⟨b⟩
    simpa using Module.finrank_eq_card_basis b.toBasis
  tfae_have 2 ↔ 5 := ker_eq_bot
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `322ac51cb5f120cd8166341a576cd6eb59cb3a63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
