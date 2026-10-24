# dual_rTensor_conj_homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea00edf9b07353d29887e9528def7d564dff4d4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d220107-5531-38a3-281c-371264bc5b6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0230f8b8-fb00-fd13-733e-8d7bbf8ce4c3",
  "kind": "theorem",
  "lexical_name": "dual_rTensor_conj_homEquiv",
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
  "slug": "dual-rtensor-conj-homequiv--ad613a0f8153b9d68c730770",
  "source": {
    "blob": "ea00edf9b07353d29887e9528def7d564dff4d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad613a0f8153b9d68c73077010182c7cd3f0f442ab783499498f3c046755e6f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0230f8b8-fb00-fd13-733e-8d7bbf8ce4c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_rTensor_conj_homEquiv (f : A →ₗ[R] A') :
    homEquiv.symm.toLinearMap ∘ₗ dual (f.rTensor B) ∘ₗ homEquiv.toLinearMap = f.lcomp R _ := rfl

end module

/--
`ℤ⋆`, the character module of `ℤ` in the unit rational circle.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea00edf9b07353d29887e9528def7d564dff4d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
