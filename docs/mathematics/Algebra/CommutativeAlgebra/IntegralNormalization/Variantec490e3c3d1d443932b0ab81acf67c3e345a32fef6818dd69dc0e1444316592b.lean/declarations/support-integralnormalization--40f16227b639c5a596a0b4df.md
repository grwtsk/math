# support_integralNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc46ee67-f755-5b76-d1df-aee96e7d2bd1",
  "kind": "theorem",
  "lexical_name": "support_integralNormalization",
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
  "slug": "support-integralnormalization--40f16227b639c5a596a0b4df",
  "source": {
    "blob": "51de2348bfab70a9b271c437a0836ede18dd5f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 103,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40f16227b639c5a596a0b4dfc591f5d17ed40adbcc4f10e0797dc559276818da",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc46ee67-f755-5b76-d1df-aee96e7d2bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_integralNormalization {f : R[X]} :
    (integralNormalization f).support = f.support := by
  by_cases hf : f = 0; · simp [hf]
  ext i
  refine' ⟨fun h => integralNormalization_support h, _⟩
  simp only [integralNormalization_coeff, mem_support_iff]
  intro hfi
  split_ifs with hi <;> simp [hfi, hi, pow_ne_zero _ (leadingCoeff_ne_zero.mpr hf)]
#align polynomial.support_integral_normalization Polynomial.support_integralNormalization

end IsDomain

section IsDomain

variable [CommRing R] [IsDomain R]

variable [CommSemiring S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51de2348bfab70a9b271c437a0836ede18dd5f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
