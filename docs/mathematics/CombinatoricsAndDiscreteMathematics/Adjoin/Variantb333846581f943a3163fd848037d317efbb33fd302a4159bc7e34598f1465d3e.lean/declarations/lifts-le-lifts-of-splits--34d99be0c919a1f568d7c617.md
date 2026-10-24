# Lifts.le_lifts_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce7455b0-e256-1d48-514d-c5c0c50956af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3dd1e0d-54ca-b24d-b038-baa7f843718a",
  "kind": "theorem",
  "lexical_name": "Lifts.le_lifts_of_splits",
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
  "slug": "lifts-le-lifts-of-splits--34d99be0c919a1f568d7c617",
  "source": {
    "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1140,
    "line": 1117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d99be0c919a1f568d7c617848fddd9921839344c4df4b7486ea9b4ca977f82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3dd1e0d-54ca-b24d-b038-baa7f843718a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1117–1140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lifts.le_lifts_of_splits (x : Lifts F E K) {s : E} (h1 : IsIntegral F s)
    (h2 : (minpoly F s).Splits (algebraMap F K)) : x ≤ x.liftOfSplits h1 h2 :=
  ⟨fun z hz => algebraMap_mem x.1⟮s⟯ ⟨z, hz⟩, fun t u htu =>
    Eq.symm
      (by
        let alg : Algebra x.1 x.1⟮s⟯ := x.1⟮s⟯.toSubalgebra.algebra
        rw [← show algebraMap x.1 x.1⟮s⟯ t = u from Subtype.ext htu]
        letI : Algebra x.1 K := x.2.toRingHom.toAlgebra
        let I1 : IsIntegral x.1 s := isIntegral_of_isScalarTower h1
        let key : (minpoly x.1 s).Splits x.2.toRingHom :=
          splits_of_splits_of_dvd _ (map_ne_zero (minpoly.ne_zero h1))
            ((splits_map_iff _ _).mpr (by convert h2; exact RingHom.ext fun y => x.2.commutes y))
              (minpoly.dvd_map_of_isScalarTower _ _ _)
        have I2 := (ne_of_gt (minpoly.degree_pos I1))
        have I3 : rootOfSplits (AlgHom.toRingHom x.2) key (ne_of_gt (minpoly.degree_pos I1)) ∈
            (Polynomial.map (algebraMap x.1 K) (minpoly x.1 s)).roots := by
          rw [mem_roots (map_ne_zero (minpoly.ne_zero I1)), IsRoot, ← eval₂_eq_eval_map]
          exact map_rootOfSplits x.2.toRingHom key (ne_of_gt (minpoly.degree_pos I1))
        let φ : x.1⟮s⟯ →ₐ[x.1] K := ((algHomAdjoinIntegralEquiv x.1 I1).invFun
          ⟨rootOfSplits (AlgHom.toRingHom x.2) key I2, I3⟩)

        exact AlgHom.commutes φ t)⟩
#align intermediate_field.lifts.le_lifts_of_splits IntermediateField.Lifts.le_lifts_of_splits

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean#L1117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256d3ace4f5b381f78ba64127f3d186c2778768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
