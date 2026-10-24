# LinearMap.surjective_of_surjective_comp_mkQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40343a26-6907-5342-a3ff-4f0c0a3e0ca0",
  "kind": "lemma",
  "lexical_name": "LinearMap.surjective_of_surjective_comp_mkQ",
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
  "slug": "linearmap-surjective-of-surjective-comp-mkq--e9310a263061617aae230653",
  "source": {
    "blob": "17f449d4ee829e6ade536df8ea90f5880d27c91d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 237,
    "path": "GRWTSK/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9310a263061617aae230653de15fd0f49a65f08b96b6a7ac1674f9aca937c99",
  "verification": {
    "reference": "docs/verification/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40343a26-6907-5342-a3ff-4f0c0a3e0ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.surjective_of_surjective_comp_mkQ {N : Type*} [AddCommGroup N] [Module R N]
    [Module.Finite R N] (f : M →ₗ[R] N) (I : Ideal R) (Ile : I ≤ (⊥ : Ideal R).jacobson)
    (surj : Function.Surjective ((I • (⊤ : Submodule R N)).mkQ ∘ₗ f)) : Function.Surjective f := by
  rw [← LinearMap.range_eq_top, ← top_le_iff]
  apply Submodule.le_of_le_smul_of_le_jacobson_bot (Module.finite_def.mp ‹_›) Ile
  rw [top_le_iff, sup_comm, ← Submodule.map_mkQ_eq_top, ← LinearMap.range_comp]
  exact LinearMap.range_eq_top_of_surjective _ surj
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f449d4ee829e6ade536df8ea90f5880d27c91d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
