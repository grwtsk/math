# algEquivIncludeRange_symm_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ddfb5259e9732e758e5abb0d22d438096cb3d59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71fee819-6bf7-f69e-f375-c3ef99291ef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc1256e9-a6d9-e3f8-0f24-b845b6b21c0f",
  "kind": "theorem",
  "lexical_name": "algEquivIncludeRange_symm_tmul",
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
  "slug": "algequivincluderange-symm-tmul--3f17823e07dbc67d12bf6068",
  "source": {
    "blob": "3ddfb5259e9732e758e5abb0d22d438096cb3d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f17823e07dbc67d12bf606841d80dd53890f7d7af050d3c72b1fecb63472ae0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1256e9-a6d9-e3f8-0f24-b845b6b21c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algEquivIncludeRange_symm_tmul (x y) :
    (algEquivIncludeRange R S T).symm (x ⊗ₜ[R] y) = x.1 * y.1 := rfl

end Algebra.TensorProduct

end Semiring

section CommSemiring

variable [CommSemiring R] [CommSemiring S] [Algebra R S] [CommSemiring T] [Algebra R T]

variable (A B : Subalgebra R S)

/-- If `A` and `B` are subalgebras in a commutative algebra `S` over `R`,
there is the natural `R`-algebra homomorphism
`A ⊗[R] B →ₐ[R] S` induced by multiplication in `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddfb5259e9732e758e5abb0d22d438096cb3d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
