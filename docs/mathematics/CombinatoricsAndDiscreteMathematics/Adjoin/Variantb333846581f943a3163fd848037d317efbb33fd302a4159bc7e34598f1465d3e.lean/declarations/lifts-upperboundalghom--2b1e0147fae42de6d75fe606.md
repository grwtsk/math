# Lifts.upperBoundAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1278570551ff4a029ea7dad14571306cede6eabb70b329b6f086bdc989c1c65",
  "kind": "def",
  "lexical_name": "Lifts.upperBoundAlgHom",
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
  "slug": "lifts-upperboundalghom--2b1e0147fae42de6d75fe606",
  "source": {
    "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1074,
    "line": 1050,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b1e0147fae42de6d75fe606e8f374bdfb6e233943709dd55e27cda76be26154",
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

Occurrence: `declaration:f1278570551ff4a029ea7dad14571306cede6eabb70b329b6f086bdc989c1c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Lifts.upperBoundAlgHom {c : Set (Lifts F E K)} (hc : IsChain (· ≤ ·) c) :
    Lifts.upperBoundIntermediateField hc →ₐ[F] K where
  toFun s := (Classical.choose s.mem).2 ⟨s, (Classical.choose_spec s.mem).2⟩
  map_zero' := AlgHom.map_zero _
  map_one' := AlgHom.map_one _
  map_add' s t := by
    obtain ⟨w, _, hxw, hyw, hzw⟩ :=
      Lifts.exists_max_three hc (Classical.choose_spec s.mem).1 (Classical.choose_spec t.mem).1
        (Classical.choose_spec (s + t).mem).1

    simp only [Subsemiring.coe_add, Subalgebra.coe_toSubsemiring, coe_toSubalgebra,
        Lifts.eq_of_le hzw, Lifts.eq_of_le hxw, Lifts.eq_of_le hyw, ← w.2.map_add,
          AddMemClass.mk_add_mk]
  map_mul' s t := by
    obtain ⟨w, _, hxw, hyw, hzw⟩ :=
      Lifts.exists_max_three hc (Classical.choose_spec s.mem).1 (Classical.choose_spec t.mem).1
        (Classical.choose_spec (s * t).mem).1
    simp only [Submonoid.coe_mul, Subsemiring.coe_toSubmonoid, Subalgebra.coe_toSubsemiring,
      coe_toSubalgebra, Lifts.eq_of_le hzw, Lifts.eq_of_le hxw, Lifts.eq_of_le hyw, ← w.2.map_mul,
        Submonoid.mk_mul_mk]

  commutes' _ := AlgHom.commutes _ _
#align intermediate_field.lifts.upper_bound_alg_hom IntermediateField.Lifts.upperBoundAlgHom

/-- An upper bound on a chain of lifts -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256d3ace4f5b381f78ba64127f3d186c2778768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
