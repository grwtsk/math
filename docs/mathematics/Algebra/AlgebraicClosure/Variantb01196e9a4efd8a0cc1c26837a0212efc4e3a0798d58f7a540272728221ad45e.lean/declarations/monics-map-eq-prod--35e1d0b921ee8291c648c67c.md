# Monics.map_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be5787fd-96c2-c4b3-0062-742b0ba865be",
  "kind": "theorem",
  "lexical_name": "Monics.map_eq_prod",
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
  "slug": "monics-map-eq-prod--35e1d0b921ee8291c648c67c",
  "source": {
    "blob": "15fa2c7599026f625a9ecf007aadc2eaa3498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35e1d0b921ee8291c648c67c67c3eb463dca6365beeff8facf7aeb4952239387",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be5787fd-96c2-c4b3-0062-742b0ba865be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monics.map_eq_prod {f : Monics k} :
    f.1.map (algebraMap k (AlgebraicClosure k)) =
      ∏ i, map (Ideal.Quotient.mk <| maxIdeal k) (X - C (MvPolynomial.X ⟨f, i⟩)) := by
  ext
  dsimp [AlgebraicClosure]
  rw [← Ideal.Quotient.mk_comp_algebraMap, ← map_map, ← Polynomial.map_prod, ← sub_eq_zero,
    ← coeff_sub, ← Polynomial.map_sub, ← subProdXSubC, coeff_map, Ideal.Quotient.eq_zero_iff_mem]
  refine le_maxIdeal _ (Ideal.subset_span ⟨⟨f, _⟩, rfl⟩)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fa2c7599026f625a9ecf007aadc2eaa3498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
