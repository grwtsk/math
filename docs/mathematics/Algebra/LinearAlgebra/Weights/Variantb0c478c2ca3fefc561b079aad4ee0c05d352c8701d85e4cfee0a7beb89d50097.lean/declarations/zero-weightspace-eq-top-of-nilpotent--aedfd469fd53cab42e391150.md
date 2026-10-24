# zero_weightSpace_eq_top_of_nilpotent'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af0d299f-be3b-8df1-8419-089a9131ee99",
  "kind": "theorem",
  "lexical_name": "zero_weightSpace_eq_top_of_nilpotent'",
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
  "slug": "zero-weightspace-eq-top-of-nilpotent--aedfd469fd53cab42e391150",
  "source": {
    "blob": "1a2e4f35d737bfe03ac24ea2611d637d14d70e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 210,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aedfd469fd53cab42e3911500031deda6a6c90c0511a528636b713228fa6fab7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af0d299f-be3b-8df1-8419-089a9131ee99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_weightSpace_eq_top_of_nilpotent' [LieAlgebra.IsNilpotent R L] [IsNilpotent R L M] :
    weightSpace M (0 : L → R) = ⊤ := by
  rw [← LieSubmodule.coe_toSubmodule_eq_iff, LieSubmodule.top_coeSubmodule]
  exact iInf_max_gen_zero_eigenspace_eq_top_of_nilpotent R L M
#align lie_module.zero_weight_space_eq_top_of_nilpotent' LieModule.zero_weightSpace_eq_top_of_nilpotent'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a2e4f35d737bfe03ac24ea2611d637d14d70e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
