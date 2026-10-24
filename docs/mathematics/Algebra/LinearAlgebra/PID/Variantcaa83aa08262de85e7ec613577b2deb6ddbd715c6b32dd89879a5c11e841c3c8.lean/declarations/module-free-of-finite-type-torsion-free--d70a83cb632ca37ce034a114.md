# Module.free_of_finite_type_torsion_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/caa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4051a46-24b4-ca39-ba30-763aa7218af1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54cbdaa0-5dbb-a5f7-df35-fd96162bfed7",
  "kind": "theorem",
  "lexical_name": "Module.free_of_finite_type_torsion_free",
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
  "slug": "module-free-of-finite-type-torsion-free--d70a83cb632ca37ce034a114",
  "source": {
    "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 404,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70a83cb632ca37ce034a1140ef91c96e2b7f1dce48a76b285ac92bf203221c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54cbdaa0-5dbb-a5f7-df35-fd96162bfed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.free_of_finite_type_torsion_free [_root_.Finite ι] {s : ι → M}
    (hs : span R (range s) = ⊤) [NoZeroSMulDivisors R M] : Module.Free R M := by
  cases nonempty_fintype ι
  obtain ⟨n, b⟩ : Σn, Basis (Fin n) R M := Module.basisOfFiniteTypeTorsionFree hs
  exact Module.Free.of_basis b
#align module.free_of_finite_type_torsion_free Module.free_of_finite_type_torsion_free

/-- A finite type torsion free module over a PID admits a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5afef672f3b4238f35d3d69c040cb35f1afe227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
