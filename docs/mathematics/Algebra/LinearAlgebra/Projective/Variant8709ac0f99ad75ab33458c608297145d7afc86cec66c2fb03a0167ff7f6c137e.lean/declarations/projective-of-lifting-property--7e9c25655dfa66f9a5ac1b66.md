# Projective.of_lifting_property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02c321ad3fb9135cff54a6eea621cce367ce0052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0f1245f-e4a8-f2d8-b0ba-343af56eebc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b65b7a4-6a57-1988-5635-f6845a452743",
  "kind": "theorem",
  "lexical_name": "Projective.of_lifting_property",
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
  "slug": "projective-of-lifting-property--7e9c25655dfa66f9a5ac1b66",
  "source": {
    "blob": "02c321ad3fb9135cff54a6eea621cce367ce0052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 275,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9c25655dfa66f9a5ac1b66402a4d507a45045321458d1a58a261ef5ce3378d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b65b7a4-6a57-1988-5635-f6845a452743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Projective.of_lifting_property {R : Type u} [Ring R] {P : Type v} [AddCommGroup P]
    [Module R P] [Small.{v} R]
    -- If for all surjections of `R`-modules `M →ₗ N`, all maps `P →ₗ N` lift to `P →ₗ M`,
    (h : ∀ {M : Type v} {N : Type v} [AddCommGroup M] [AddCommGroup N]
      [Module R M] [Module R N] (f : M →ₗ[R] N) (g : P →ₗ[R] N),
        Function.Surjective f → ∃ h : P →ₗ[R] M, f.comp h = g) :
    -- then `P` is projective.
    Projective R P := by
  refine of_lifting_property'' (fun p hp ↦ ?_)
  let e := Finsupp.mapRange.linearEquiv (α := P) (Shrink.linearEquiv R R)
  rcases h (p ∘ₗ e.toLinearMap) LinearMap.id (hp.comp e.surjective) with ⟨g, hg⟩
  exact ⟨e.toLinearMap ∘ₗ g, hg⟩

end OfLiftingProperty

section DirectSum

variable {R : Type u} [Semiring R]
variable {ι : Type v} {M : ι → Type w} [(i : ι) → AddCommMonoid (M i)] [(i : ι) → Module R (M i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02c321ad3fb9135cff54a6eea621cce367ce0052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
