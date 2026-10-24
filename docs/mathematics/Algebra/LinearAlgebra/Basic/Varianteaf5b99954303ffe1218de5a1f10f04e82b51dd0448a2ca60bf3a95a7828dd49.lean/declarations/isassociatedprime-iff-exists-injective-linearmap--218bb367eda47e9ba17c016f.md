# isAssociatedPrime_iff_exists_injective_linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f598a6794c2bcb47b23a5d5b599b75884bc469fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6480b182-66d8-e59e-b61d-650b1bc61e61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a635b60-a021-a662-1760-ca260934e819",
  "kind": "theorem",
  "lexical_name": "isAssociatedPrime_iff_exists_injective_linearMap",
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
  "slug": "isassociatedprime-iff-exists-injective-linearmap--218bb367eda47e9ba17c016f",
  "source": {
    "blob": "f598a6794c2bcb47b23a5d5b599b75884bc469fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:218bb367eda47e9ba17c016f82096faf53ea77449999bf70e052d5ceed98fac7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a635b60-a021-a662-1760-ca260934e819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAssociatedPrime_iff_exists_injective_linearMap [IsNoetherianRing R] :
    IsAssociatedPrime I M ↔ I.IsPrime ∧ ∃ (f : R ⧸ I →ₗ[R] M), Function.Injective f := by
  rw [isAssociatedPrime_iff, and_congr_right_iff]
  refine fun _ ↦ ⟨fun ⟨x, h⟩ ↦ ?_, fun ⟨f, h⟩ ↦ ⟨(f ∘ₗ mkQ I) 1, ?_⟩⟩
  · replace h : I = ker (toSpanSingleton R M x) := by simp [h, SetLike.ext_iff]
    exact ⟨liftQ _ _ h.le, ker_eq_bot.mp (ker_liftQ_eq_bot' _ _ h)⟩
  · conv_lhs => rw [← I.ker_mkQ, ← ker_comp_of_ker_eq_bot (mkQ I) (ker_eq_bot_of_injective h)]
    simp [SetLike.ext_iff, ← Ideal.Quotient.algebraMap_eq, Algebra.algebraMap_eq_smul_one]

variable {I J M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f598a6794c2bcb47b23a5d5b599b75884bc469fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
