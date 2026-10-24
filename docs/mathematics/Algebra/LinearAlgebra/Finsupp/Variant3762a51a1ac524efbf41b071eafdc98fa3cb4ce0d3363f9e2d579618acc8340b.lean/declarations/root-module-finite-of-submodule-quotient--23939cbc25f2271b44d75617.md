# _root_.Module.Finite.of_submodule_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f5c74b1dd6c56d2143076abd6fb0ce93ba8789e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60f0efb9-0357-5c33-853a-ab33e1f2ce41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de3d1a49-ffdf-5242-c8c8-4f2c5a2259a8",
  "kind": "theorem",
  "lexical_name": "_root_.Module.Finite.of_submodule_quotient",
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
  "slug": "root-module-finite-of-submodule-quotient--23939cbc25f2271b44d75617",
  "source": {
    "blob": "0f5c74b1dd6c56d2143076abd6fb0ce93ba8789e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23939cbc25f2271b44d756172ae312c252a4c9a061ec560168bc1af5543ce117",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de3d1a49-ffdf-5242-c8c8-4f2c5a2259a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Module.Finite.of_submodule_quotient (N : Submodule R M) [Module.Finite R N]
    [Module.Finite R (M ⧸ N)] : Module.Finite R M :=
  .of_exact (LinearMap.exact_subtype_mkQ N) (Quotient.mk_surjective _)

end Submodule

section

variable {R V} [Semiring R] [AddCommMonoid V] [Module R V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3762a51a1ac524efbf41b071eafdc98fa3cb4ce0d3363f9e2d579618acc8340b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5c74b1dd6c56d2143076abd6fb0ce93ba8789e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
