# exists_integer_polynomial_multiple_and_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3692393-b91b-71fd-b909-367202f34841",
  "kind": "theorem",
  "lexical_name": "exists_integer_polynomial_multiple_and_support_subset",
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
  "slug": "exists-integer-polynomial-multiple-and-support-subset--45601cbdab70c449ceb03e94",
  "source": {
    "blob": "70bbddb523939a045ac3dcd118a1fa44b755cb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45601cbdab70c449ceb03e94bdcb3f3822ee6a7cf65a6d09574e886bfed56191",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3692393-b91b-71fd-b909-367202f34841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_integer_polynomial_multiple_and_support_subset (p : S[X]) :
    ∃ b ∈ M, ∃ (q : R[X]), q.map (algebraMap R S) = b • p ∧ q.support ⊆ p.support := by
  obtain ⟨⟨_, b, hb, rfl⟩, h⟩ := exists_integer_multiple (Submonoid.map C M) p
  rw [Subtype.coe_mk, C_eq_algebraMap, algebraMap_smul] at h
  obtain ⟨q', h₁, h₂⟩ := exists_support_eq_of_mem_lifts h
  exact ⟨b, hb, q', h₁, h₂ ▸ support_smul b p⟩

/-- `integerNormalization p` normalizes `p` to have integer coefficients
by clearing the denominators -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70bbddb523939a045ac3dcd118a1fa44b755cb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
