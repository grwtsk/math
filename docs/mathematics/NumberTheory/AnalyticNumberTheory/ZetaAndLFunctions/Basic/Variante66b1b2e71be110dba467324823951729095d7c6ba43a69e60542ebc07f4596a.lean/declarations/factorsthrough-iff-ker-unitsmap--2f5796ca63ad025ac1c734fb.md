# factorsThrough_iff_ker_unitsMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6026d444ad49c14c802f1e21b30646c8a2595056",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:134045b7-d0de-f1d9-b417-71e5abdff224",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a85121e2-0046-4ae4-afc7-95bdb1f9f08a",
  "kind": "lemma",
  "lexical_name": "factorsThrough_iff_ker_unitsMap",
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
  "slug": "factorsthrough-iff-ker-unitsmap--2f5796ca63ad025ac1c734fb",
  "source": {
    "blob": "6026d444ad49c14c802f1e21b30646c8a2595056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5796ca63ad025ac1c734fb0bcd41da1432161ebe8ca4fb5e79aa6ae608565f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a85121e2-0046-4ae4-afc7-95bdb1f9f08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorsThrough_iff_ker_unitsMap {d : ℕ} [NeZero n] (hd : d ∣ n) :
    FactorsThrough χ d ↔ (ZMod.unitsMap hd).ker ≤ χ.toUnitHom.ker := by
  refine ⟨fun ⟨_, ⟨χ₀, hχ₀⟩⟩ x hx ↦ ?_, fun h ↦ ?_⟩
  · rw [MonoidHom.mem_ker, hχ₀, changeLevel_toUnitHom, MonoidHom.comp_apply, hx, map_one]
  · let E := MonoidHom.liftOfSurjective _ (ZMod.unitsMap_surjective hd) ⟨_, h⟩
    have hE : E.comp (ZMod.unitsMap hd) = χ.toUnitHom := MonoidHom.liftOfRightInverse_comp ..
    refine ⟨hd, MulChar.ofUnitHom E, equivToUnitHom.injective (?_ : toUnitHom _ = toUnitHom _)⟩
    simp_rw [changeLevel_toUnitHom, toUnitHom_eq, ofUnitHom_eq, Equiv.apply_symm_apply, hE,
      toUnitHom_eq]

/-!
### Edge cases
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6026d444ad49c14c802f1e21b30646c8a2595056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
