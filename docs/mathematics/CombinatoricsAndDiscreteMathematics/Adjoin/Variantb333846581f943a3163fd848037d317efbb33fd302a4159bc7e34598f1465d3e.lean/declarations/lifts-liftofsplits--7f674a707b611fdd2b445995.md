# Lifts.liftOfSplits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ba341a950031c738c928b4cd5c033dee447392fd2d3fdc7c099abec56ab6008",
  "kind": "def",
  "lexical_name": "Lifts.liftOfSplits",
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
  "slug": "lifts-liftofsplits--7f674a707b611fdd2b445995",
  "source": {
    "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1116,
    "line": 1096,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f674a707b611fdd2b4459957532c72917600fdc36b235d5347228d1b535491f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ba341a950031c738c928b4cd5c033dee447392fd2d3fdc7c099abec56ab6008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1096–1116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Lifts.liftOfSplits (x : Lifts F E K) {s : E} (h1 : IsIntegral F s)
    (h2 : (minpoly F s).Splits (algebraMap F K)) : Lifts F E K :=
  let h3 : IsIntegral x.1 s := isIntegral_of_isScalarTower h1
  let key : (minpoly x.1 s).Splits x.2.toRingHom :=
    splits_of_splits_of_dvd _ (map_ne_zero (minpoly.ne_zero h1))
     ((splits_map_iff _ _).mpr (by convert h2; exact RingHom.ext fun y => x.2.commutes y))
      (minpoly.dvd_map_of_isScalarTower _ _ _)
  let alg : Algebra {y // y ∈ x.fst} {y // y ∈ restrictScalars F {z // z ∈ x.fst}⟮s⟯} :=
    {z // z ∈ x.fst}⟮s⟯.toSubalgebra.algebra
  ⟨x.1⟮s⟯.restrictScalars F,
    (@algHomEquivSigma F x.1 (x.1⟮s⟯.restrictScalars F) K _ _ _ _ _ _ _
          (IntermediateField.algebra x.1⟮s⟯) (IsScalarTower.of_algebraMap_eq fun _ => rfl)).invFun
      ⟨x.2,
        (@algHomAdjoinIntegralEquiv x.1 _ E _ _ s K _ x.2.toRingHom.toAlgebra h3).invFun
          ⟨rootOfSplits x.2.toRingHom key (ne_of_gt (minpoly.degree_pos h3)), by
            rw [mem_roots (map_ne_zero (minpoly.ne_zero h3)), IsRoot, ← eval₂_eq_eval_map]
            exact map_rootOfSplits x.2.toRingHom key (ne_of_gt (minpoly.degree_pos h3))⟩⟩⟩
#align intermediate_field.lifts.lift_of_splits IntermediateField.Lifts.liftOfSplits

-- Porting note: instance `alg` added by hand.
-- Porting note: Lean3 is able to guess `φ`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean#L1096).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256d3ace4f5b381f78ba64127f3d186c2778768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
