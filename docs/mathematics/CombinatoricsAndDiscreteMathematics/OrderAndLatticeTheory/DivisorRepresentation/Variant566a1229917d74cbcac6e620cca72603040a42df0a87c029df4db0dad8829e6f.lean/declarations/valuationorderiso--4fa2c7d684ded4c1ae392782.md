# valuationOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d68ea3f3c4255c072f0276212acbaae2642aed614e3b5bec7e95eec7e28f6ae",
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
  "slug": "valuationorderiso--4fa2c7d684ded4c1ae392782",
  "source": {
    "blob": "33ae7543dab892ba8e45b42fb4f1e85f7513c454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant566a1229917d74cbcac6e620cca72603040a42df0a87c029df4db0dad8829e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fa2c7d684ded4c1ae3927821b79023da2995970e319516c37b4bf8805762fe8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant566a1229917d74cbcac6e620cca72603040a42df0a87c029df4db0dad8829e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d68ea3f3c4255c072f0276212acbaae2642aed614e3b5bec7e95eec7e28f6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant566a1229917d74cbcac6e620cca72603040a42df0a87c029df4db0dad8829e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant566a1229917d74cbcac6e620cca72603040a42df0a87c029df4db0dad8829e6f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ae7543dab892ba8e45b42fb4f1e85f7513c454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
