# totalDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:122665cf-31d3-9679-1224-a5072fd67bc2",
  "kind": "theorem",
  "lexical_name": "totalDegree",
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
  "slug": "totaldegree--08c22fb9c2df1050fd71ef7a",
  "source": {
    "blob": "b25e34205da9092f778d5fdcf86f94fa1095309f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 214,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08c22fb9c2df1050fd71ef7a2f6a08fd2413387a87f0b72fb3c9ca3db1dedd16",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:122665cf-31d3-9679-1224-a5072fd67bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totalDegree (hφ : IsHomogeneous φ n) (h : φ ≠ 0) : totalDegree φ = n := by
  rw [totalDegree]
  apply le_antisymm
  · apply Finset.sup_le
    intro d hd
    rw [mem_support_iff] at hd
    rw [Finsupp.sum, hφ hd]
  · obtain ⟨d, hd⟩ : ∃ d, coeff d φ ≠ 0 := exists_coeff_ne_zero h
    simp only [← hφ hd, Finsupp.sum]
    replace hd := Finsupp.mem_support_iff.mpr hd
    -- Porting note: Original proof did not define `f`
    exact Finset.le_sup (f := fun s ↦ ∑ x in s.support, (⇑s) x) hd
#align mv_polynomial.is_homogeneous.total_degree MvPolynomial.IsHomogeneous.totalDegree

/-- The homogeneous submodules form a graded ring. This instance is used by `DirectSum.commSemiring`
and `DirectSum.algebra`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25e34205da9092f778d5fdcf86f94fa1095309f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
