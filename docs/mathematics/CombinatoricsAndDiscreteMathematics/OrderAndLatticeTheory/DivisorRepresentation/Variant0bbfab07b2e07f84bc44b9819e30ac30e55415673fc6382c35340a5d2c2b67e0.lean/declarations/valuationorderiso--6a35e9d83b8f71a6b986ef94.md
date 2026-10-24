# valuationOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b151eba1635d7ebc1ffbd7f9ffef16c1441c3a9450b6c5356e0e60c8fdc772ca",
  "kind": "def",
  "lexical_name": "valuationOrderIso",
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
  "slug": "valuationorderiso--6a35e9d83b8f71a6b986ef94",
  "source": {
    "blob": "bd60ed1cea1cc0416250d9e42cb87a7270f43073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a35e9d83b8f71a6b986ef9490e73013581fc62c430eac279e5baaf9a3a0a2f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b151eba1635d7ebc1ffbd7f9ffef16c1441c3a9450b6c5356e0e60c8fdc772ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def valuationOrderIso : Divisor M ≃o Set.Iic M.factorization where
  toFun d := ⟨(d : ℕ).factorization,
    (Nat.factorization_le_iff_dvd d.ne_zero (NeZero.ne M)).mpr d.property⟩
  invFun f := ⟨f.val.prod (· ^ ·), Nat.prod_pow_dvd_of_le_factorization f.property⟩
  left_inv d := Subtype.ext (Nat.prod_factorization_pow_eq_self d.ne_zero)
  right_inv f := Subtype.ext (Nat.factorization_prod_pow_eq_self_of_le_factorization f.property)
  map_rel_iff' := fun {d e} => Nat.factorization_le_iff_dvd d.ne_zero e.ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant0bbfab07b2e07f84bc44b9819e30ac30e55415673fc6382c35340a5d2c2b67e0.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd60ed1cea1cc0416250d9e42cb87a7270f43073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
