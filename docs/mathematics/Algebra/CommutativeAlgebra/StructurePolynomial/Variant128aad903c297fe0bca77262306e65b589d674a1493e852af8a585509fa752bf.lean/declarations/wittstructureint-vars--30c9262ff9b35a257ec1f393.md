# wittStructureInt_vars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df8891ad4c26fc524f2688dc17def1a10806896d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1d997a8-78a0-0045-9977-f6d7932a9aa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8df4ccf1-e415-5a75-51f6-615a6af01a95",
  "kind": "theorem",
  "lexical_name": "wittStructureInt_vars",
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
  "slug": "wittstructureint-vars--30c9262ff9b35a257ec1f393",
  "source": {
    "blob": "df8891ad4c26fc524f2688dc17def1a10806896d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 384,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c9262ff9b35a257ec1f393c49508c744ad28243ee3a9ab9b7897dad4f9eb78",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8df4ccf1-e415-5a75-51f6-615a6af01a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittStructureInt_vars [Fintype idx] (Φ : MvPolynomial idx ℤ) (n : ℕ) :
    (wittStructureInt p Φ n).vars ⊆ Finset.univ ×ˢ Finset.range (n + 1) := by
  have : Function.Injective (Int.castRingHom ℚ) := Int.cast_injective
  rw [← vars_map_of_injective _ this, map_wittStructureInt]
  apply wittStructureRat_vars

end PPrime
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df8891ad4c26fc524f2688dc17def1a10806896d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
