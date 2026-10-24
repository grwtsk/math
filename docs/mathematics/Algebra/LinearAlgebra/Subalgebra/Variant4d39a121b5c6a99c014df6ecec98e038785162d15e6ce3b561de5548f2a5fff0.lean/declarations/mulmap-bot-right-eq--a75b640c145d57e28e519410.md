# mulMap_bot_right_eq

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
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5f07424-a60c-5fd6-e964-5e2882874d55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d225470-c49a-be02-5cbf-93028a9caf15",
  "kind": "theorem",
  "lexical_name": "mulMap_bot_right_eq",
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
  "slug": "mulmap-bot-right-eq--a75b640c145d57e28e519410",
  "source": {
    "blob": "3ddfb5259e9732e758e5abb0d22d438096cb3d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a75b640c145d57e28e519410a847f0d38828f9c3e16101c895c1fdce3ed6dd31",
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

Occurrence: `result:8d225470-c49a-be02-5cbf-93028a9caf15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulMap_bot_right_eq : mulMap A ⊥ = A.val.comp A.rTensorBot.toAlgHom :=
  AlgHom.toLinearMap_injective (toSubmodule A).mulMap_one_right_eq

/-- If `A` and `B` are subalgebras in a commutative algebra `S` over `R`,
there is the natural `R`-algebra homomorphism
`A ⊗[R] B →ₐ[R] A ⊔ B` induced by multiplication in `S`,
which is surjective (`Subalgebra.mulMap'_surjective`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddfb5259e9732e758e5abb0d22d438096cb3d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
