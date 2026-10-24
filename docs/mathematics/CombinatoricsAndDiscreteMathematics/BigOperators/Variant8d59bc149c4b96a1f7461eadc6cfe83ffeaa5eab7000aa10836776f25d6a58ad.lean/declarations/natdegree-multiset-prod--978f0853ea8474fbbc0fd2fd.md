# natDegree_multiset_prod'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b4bf8c-0496-3484-4683-a2fbd1fc6468",
  "kind": "theorem",
  "lexical_name": "natDegree_multiset_prod'",
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
  "slug": "natdegree-multiset-prod--978f0853ea8474fbbc0fd2fd",
  "source": {
    "blob": "22631d5bbba8f7c0bd7bac57c40371f45dbacce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:978f0853ea8474fbbc0fd2fdf05f60b8d1c436aba34e733223ba2a0c43bae626",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b4bf8c-0496-3484-4683-a2fbd1fc6468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_multiset_prod' (h : (t.map fun f => leadingCoeff f).prod ≠ 0) :
    t.prod.natDegree = (t.map fun f => natDegree f).sum := by
  revert h
  refine' Multiset.induction_on t _ fun a t ih ht => _; · simp
  rw [Multiset.map_cons, Multiset.prod_cons] at ht ⊢
  rw [Multiset.sum_cons, Polynomial.natDegree_mul', ih]
  · apply right_ne_zero_of_mul ht
  · rwa [Polynomial.leadingCoeff_multiset_prod']
    apply right_ne_zero_of_mul ht
#align polynomial.nat_degree_multiset_prod' Polynomial.natDegree_multiset_prod'

/-- The degree of a product of polynomials is equal to
the sum of the degrees, provided that the product of leading coefficients is nonzero.

See `Polynomial.natDegree_prod` (without the `'`) for a version for integral domains,
where this condition is automatically satisfied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22631d5bbba8f7c0bd7bac57c40371f45dbacce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
