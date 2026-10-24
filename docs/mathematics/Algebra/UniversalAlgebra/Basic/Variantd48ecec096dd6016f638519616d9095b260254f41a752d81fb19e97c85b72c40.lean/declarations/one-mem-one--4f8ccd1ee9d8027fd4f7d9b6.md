# one_mem_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b49a3cc-7706-61a4-27f8-cf1ed53dcec4",
  "kind": "theorem",
  "lexical_name": "one_mem_one",
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
  "slug": "one-mem-one--4f8ccd1ee9d8027fd4f7d9b6",
  "source": {
    "blob": "fdc699de8e627c111d51ed44e6e43259ad664e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8ccd1ee9d8027fd4f7d9b60d9a8bce756a4722e1adfbfe481ab22d7e01fc58",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b49a3cc-7706-61a4-27f8-cf1ed53dcec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_mem_one : (1 : α) ∈ (1 : Interval α) :=
  ⟨le_rfl, le_rfl⟩

end Interval

end PartialOrder

end One

/-!
### Addition/multiplication

Note that this multiplication does not apply to `ℚ` or `ℝ`.
-/


section Mul

variable [Preorder α] [Mul α] [MulLeftMono α] [MulRightMono α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc699de8e627c111d51ed44e6e43259ad664e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
