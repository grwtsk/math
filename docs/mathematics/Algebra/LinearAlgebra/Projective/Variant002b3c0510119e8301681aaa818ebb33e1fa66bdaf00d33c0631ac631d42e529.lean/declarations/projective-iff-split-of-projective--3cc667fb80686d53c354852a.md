# Projective.iff_split_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7463cd0-a607-cd5b-84de-a4a7abe227f1",
  "kind": "theorem",
  "lexical_name": "Projective.iff_split_of_projective",
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
  "slug": "projective-iff-split-of-projective--3cc667fb80686d53c354852a",
  "source": {
    "blob": "70778af63b1c9b0c3f176e68cba5c0c9ebc491bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cc667fb80686d53c354852aa4516d274915cf2fc830078e7ddb5f7ac4fd4153",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7463cd0-a607-cd5b-84de-a4a7abe227f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Projective.iff_split_of_projective [Module.Projective R M] (s : M →ₗ[R] P)
    (hs : Function.Surjective s) :
    Module.Projective R P ↔ ∃ i, s ∘ₗ i = LinearMap.id :=
  ⟨fun _ ↦ projective_lifting_property _ _ hs, fun ⟨i, H⟩ ↦ Projective.of_split i s H⟩

attribute [local instance] RingHomInvPair.of_ringEquiv in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70778af63b1c9b0c3f176e68cba5c0c9ebc491bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
