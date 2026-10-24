# ordinary_supersingular_selects_policy_not_growth_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ad27163eb0ce3833b9a0485c25e7fe95308deb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4488cfca5150c5214f436e16ca9788db675eab88fb277a7676205119b6c48a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f87ee0db-4e90-1414-52c7-6e3e59602e61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1f8e14f-5cbd-5905-2347-2b4d4e5fb39a",
  "kind": "theorem",
  "lexical_name": "ordinary_supersingular_selects_policy_not_growth_theorem",
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
  "slug": "ordinary-supersingular-selects-policy-not-growth-theorem--17be8edcf7295f554c23c945",
  "source": {
    "blob": "0ad27163eb0ce3833b9a0485c25e7fe95308deb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 268,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variante4488cfca5150c5214f436e16ca9788db675eab88fb277a7676205119b6c48a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17be8edcf7295f554c23c945c5681d4fa98db98116ff4501aae3638f7d8b1e23",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variante4488cfca5150c5214f436e16ca9788db675eab88fb277a7676205119b6c48a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f8e14f-5cbd-5905-2347-2b4d4e5fb39a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinary_supersingular_selects_policy_not_growth_theorem :
    (selectCompressionPolicy 5 1).selectedPolicy =
        PrimeReductionPolicy.ordinaryMacroPolicy ∧
      (selectCompressionPolicy 7 0).selectedPolicy =
        PrimeReductionPolicy.supersingularMacroPolicy ∧
      (selectCompressionPolicy 5 1).growthTheoremClaim = false ∧
      (selectCompressionPolicy 7 0).growthTheoremClaim = false := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variante4488cfca5150c5214f436e16ca9788db675eab88fb277a7676205119b6c48a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variante4488cfca5150c5214f436e16ca9788db675eab88fb277a7676205119b6c48a3.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad27163eb0ce3833b9a0485c25e7fe95308deb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
