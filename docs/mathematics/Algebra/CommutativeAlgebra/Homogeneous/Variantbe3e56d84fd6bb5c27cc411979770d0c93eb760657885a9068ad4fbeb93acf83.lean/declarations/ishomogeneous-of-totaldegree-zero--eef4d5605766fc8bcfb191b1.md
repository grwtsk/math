# isHomogeneous_of_totalDegree_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:075624cc-5b16-ad4d-9af3-211dbe710daf",
  "kind": "theorem",
  "lexical_name": "isHomogeneous_of_totalDegree_zero",
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
  "slug": "ishomogeneous-of-totaldegree-zero--eef4d5605766fc8bcfb191b1",
  "source": {
    "blob": "b25e34205da9092f778d5fdcf86f94fa1095309f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 136,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef4d5605766fc8bcfb191b116b8bf4d0847393646f782bf299520e5678577c9",
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

Occurrence: `result:075624cc-5b16-ad4d-9af3-211dbe710daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHomogeneous_of_totalDegree_zero {p : MvPolynomial σ R} (hp : p.totalDegree = 0) :
    IsHomogeneous p 0 := by
  erw [totalDegree, Finset.sup_eq_bot_iff] at hp
  -- we have to do this in two steps to stop simp changing bot to zero
  simp_rw [mem_support_iff] at hp
  exact hp
#align mv_polynomial.is_homogeneous_of_total_degree_zero MvPolynomial.isHomogeneous_of_totalDegree_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25e34205da9092f778d5fdcf86f94fa1095309f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
