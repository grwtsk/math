# sumOfConjugatesEquivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:233d1f579a0abfb4a4491cf97e662cbf875b528e2c85ae3443798bf72d7fff5f",
  "kind": "def",
  "lexical_name": "sumOfConjugatesEquivariant",
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
  "slug": "sumofconjugatesequivariant--b07def272ba12b934c797eef",
  "source": {
    "blob": "c8bc1536664f273f582c7bd2edf8baf67b5aa46c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b07def272ba12b934c797eef03bd14231250c9b3a4ec9d42d93b85703878c742",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:233d1f579a0abfb4a4491cf97e662cbf875b528e2c85ae3443798bf72d7fff5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumOfConjugatesEquivariant : W →ₗ[k[G]] V :=
  MonoidAlgebra.equivariantOfLinearOfComm (π.sumOfConjugates G) fun g v => by
    simp only [sumOfConjugates_apply, Finset.smul_sum, conjugate_apply]
    refine Fintype.sum_bijective (· * g) (Group.mulRight_bijective g) _ _ fun i ↦ ?_
    simp only [smul_smul, single_mul_single, mul_inv_rev, mul_inv_cancel_left, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8bc1536664f273f582c7bd2edf8baf67b5aa46c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
