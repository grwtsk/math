# Projective.of_lifting_property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9ef4caa5a6a3dd84a23fd1ab4e5e34a3a6e7573",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e38bd855-4cbd-5c9a-e662-14f7ccd1222c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57185f54-37fd-49f1-fc8a-660ce8c9b968",
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
  "slug": "projective-of-lifting-property--9add13d20bb5a898f64bbc04",
  "source": {
    "blob": "a9ef4caa5a6a3dd84a23fd1ab4e5e34a3a6e7573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9add13d20bb5a898f64bbc04196ff6bd81d61ad717ef10f55a47875447c905c8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57185f54-37fd-49f1-fc8a-660ce8c9b968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Projective.of_lifting_property {R : Type u} [Ring R] {P : Type max u v} [AddCommGroup P]
    [Module R P]
    -- If for all surjections of `R`-modules `M →ₗ N`, all maps `P →ₗ N` lift to `P →ₗ M`,
    (huniv : ∀ {M : Type max v u} {N : Type max u v} [AddCommGroup M] [AddCommGroup N]
      [Module R M] [Module R N] (f : M →ₗ[R] N) (g : P →ₗ[R] N),
        Function.Surjective f → ∃ h : P →ₗ[R] M, f.comp h = g) :
    -- then `P` is projective.
    Projective R P :=
  .of_lifting_property'' (huniv · _)
#align module.projective_of_lifting_property Module.Projective.of_lifting_property

end OfLiftingProperty

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ef4caa5a6a3dd84a23fd1ab4e5e34a3a6e7573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
