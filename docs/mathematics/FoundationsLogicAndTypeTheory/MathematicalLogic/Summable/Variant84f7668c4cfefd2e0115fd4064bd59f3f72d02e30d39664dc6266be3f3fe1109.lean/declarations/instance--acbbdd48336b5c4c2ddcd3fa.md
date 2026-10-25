# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:016a4964e59dccbdb5a19b3fc860d9af4090d7146fbdc92d4b417d6aaea0eece",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--acbbdd48336b5c4c2ddcd3fa",
  "source": {
    "blob": "01cb099bb85a761e846902f8de3143e21b4aac4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acbbdd48336b5c4c2ddcd3fa970a351780fbd2c04c6e5f5e7c6035f07c187673",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:016a4964e59dccbdb5a19b3fc860d9af4090d7146fbdc92d4b417d6aaea0eece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SMul M (SummableFamily Γ R β) :=
  ⟨fun r t =>
    { toFun := r • t
      isPWO_iUnion_support' := t.isPWO_iUnion_support.mono (Set.iUnion_mono fun i =>
        Pi.smul_apply r t i ▸ Function.support_const_smul_subset r _)
      finite_co_support' := by
        intro g
        refine (t.finite_co_support g).subset ?_
        intro i hi
        simp only [Pi.smul_apply, coeff_smul, ne_eq, Set.mem_ofPred_eq] at hi
        simp only [Function.mem_support, ne_eq]
        exact right_ne_zero_of_smul hi } ⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant84f7668c4cfefd2e0115fd4064bd59f3f72d02e30d39664dc6266be3f3fe1109.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01cb099bb85a761e846902f8de3143e21b4aac4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
