# if_ctx_congr_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65944d4b-cd56-98b6-4b1c-8340338c9787",
  "kind": "theorem",
  "lexical_name": "if_ctx_congr_prop",
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
  "slug": "if-ctx-congr-prop--c8e05ec861d0f41f36fcf52a",
  "source": {
    "blob": "64d685ebc939acc1947b1735460f92033e858d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e05ec861d0f41f36fcf52a2cf8c5f7147a6bb179b7263519ac3695d39f1bad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65944d4b-cd56-98b6-4b1c-8340338c9787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem if_ctx_congr_prop {b c x y u v : Prop} [dec_b : Decidable b] [dec_c : Decidable c]
    (h_c : b ↔ c) (h_t : c → (x ↔ u)) (h_e : ¬c → (y ↔ v)) : ite b x y ↔ ite c u v :=
  match dec_b, dec_c with
  | isFalse _,  isFalse h₂ => h_e h₂
  | isTrue _,   isTrue h₂  => h_t h₂
  | isFalse h₁, isTrue h₂  => absurd h₂ (Iff.mp (not_congr h_c) h₁)
  | isTrue h₁,  isFalse h₂ => absurd h₁ (Iff.mpr (not_congr h_c) h₂)

-- @[congr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d685ebc939acc1947b1735460f92033e858d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
