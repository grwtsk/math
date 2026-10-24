# nums_euler_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:630fb779-39aa-5e87-be5b-dde22e9bf861",
  "kind": "theorem",
  "lexical_name": "nums_euler_aux",
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
  "slug": "nums-euler-aux--955df9985e4b3db4770956ab",
  "source": {
    "blob": "f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 218,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:955df9985e4b3db4770956ab84bcdfcb9488aebc493428c450446fc1b73b3991",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630fb779-39aa-5e87-be5b-dde22e9bf861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem nums_euler_aux : (euler h ρ).nums (n + 1) - (euler h ρ).nums n =
    ∏ j ∈ Finset.range (n + 1), (ρ.get? j).getD 0 := by
  have det := determinant (g := euler h ρ) (n := n)
  simp only [isEuler_euler, IsEuler.dens_eq_one, mul_one, one_mul] at det
  rw [← neg_sub, det, Finset.prod_range_succ', Finset.prod_range_succ']
  simp only [partNum_euler_succ, partNum_euler_zero, mul_neg, neg_neg]
  congr; ext n'
  rcases ρ.get? (n' + 1) with _ | _ <;> simp

/-- The numerators of an Euler continued fraction are given by the formula
$$
  A_n = h + \sum_{i = 0}^{n - 1} \prod_{j = 0}^i \rho_j
$$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
