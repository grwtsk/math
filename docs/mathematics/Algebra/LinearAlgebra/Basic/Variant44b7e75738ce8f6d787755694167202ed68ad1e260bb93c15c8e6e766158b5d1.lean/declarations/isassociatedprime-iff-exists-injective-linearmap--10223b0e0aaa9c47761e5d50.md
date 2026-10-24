# isAssociatedPrime_iff_exists_injective_linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d63d91eff45acf4396851c10aca8866163adaba3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:148cca88-66aa-f409-84f0-99854a6ef699",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:110e1d92-fcb8-7af2-0add-9ebee361c558",
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
  "slug": "isassociatedprime-iff-exists-injective-linearmap--10223b0e0aaa9c47761e5d50",
  "source": {
    "blob": "d63d91eff45acf4396851c10aca8866163adaba3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10223b0e0aaa9c47761e5d502d1bef9d737bad6e6f2cfda16f752c4976f44ca0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:110e1d92-fcb8-7af2-0add-9ebee361c558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAssociatedPrime_iff_exists_injective_linearMap :
    IsAssociatedPrime I M ↔ I.IsPrime ∧ ∃ (f : R ⧸ I →ₗ[R] M), Function.Injective f := by
  rw [IsAssociatedPrime]
  congr! 1
  refine ⟨fun ⟨_, h⟩ ↦ ⟨Submodule.liftQ _ _ h.le, ker_eq_bot.1 (Submodule.ker_liftQ_eq_bot' _ _ h)⟩,
    fun ⟨f, h⟩ ↦ ⟨(f ∘ₗ Submodule.mkQ I) 1, ?_⟩⟩
  have := I.ker_mkQ ▸ ker_comp_of_ker_eq_bot (Submodule.mkQ I) (ker_eq_bot_of_injective h)
  convert this.symm using 2
  ext; simp

variable (R)

/-- The set of associated primes of a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63d91eff45acf4396851c10aca8866163adaba3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
