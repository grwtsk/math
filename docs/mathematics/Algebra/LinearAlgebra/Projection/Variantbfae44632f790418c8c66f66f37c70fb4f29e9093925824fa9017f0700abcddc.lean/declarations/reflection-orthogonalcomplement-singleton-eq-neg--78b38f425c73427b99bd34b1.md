# reflection_orthogonalComplement_singleton_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c15ac7a7-9480-99db-e7f2-a724b511fe12",
  "kind": "theorem",
  "lexical_name": "reflection_orthogonalComplement_singleton_eq_neg",
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
  "slug": "reflection-orthogonalcomplement-singleton-eq-neg--78b38f425c73427b99bd34b1",
  "source": {
    "blob": "d26dfd7da00bf3f6f0cc3256bccf3676daea1856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 971,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78b38f425c73427b99bd34b14efa0cb5cf86dd4457a3c32806dc016f5ca27c87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c15ac7a7-9480-99db-e7f2-a724b511fe12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_orthogonalComplement_singleton_eq_neg (v : E) : reflection (𝕜 ∙ v)ᗮ v = -v :=
  reflection_mem_subspace_orthogonal_precomplement_eq_neg (Submodule.mem_span_singleton_self v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26dfd7da00bf3f6f0cc3256bccf3676daea1856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
