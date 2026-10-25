# threeGPFree_smul_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26551c60-88a1-f0a3-b56a-cf26239008e4",
  "kind": "lemma",
  "lexical_name": "threeGPFree_smul_set",
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
  "slug": "threegpfree-smul-set--78da62c7fab682ed78a8ab4d",
  "source": {
    "blob": "9b15f12a88bffdbe741408ccfc942e389f962eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78da62c7fab682ed78a8ab4d619c18e80a522042de9497a55912052da4400a6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26551c60-88a1-f0a3-b56a-cf26239008e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma threeGPFree_smul_set : ThreeGPFree (a • s) ↔ ThreeGPFree s where
  mp hs b hb c hc d hd h := mul_left_cancel
      (hs (mem_image_of_mem _ hb) (mem_image_of_mem _ hc) (mem_image_of_mem _ hd) <| by
        rw [mul_mul_mul_comm, smul_eq_mul, smul_eq_mul, mul_mul_mul_comm, h])
  mpr := ThreeGPFree.smul_set

end CancelCommMonoid

section OrderedCancelCommMonoid

variable [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α] {s : Set α} {a : α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b15f12a88bffdbe741408ccfc942e389f962eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
