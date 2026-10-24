# valuationOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:504c2b82d55da62dc32c6cd94c1f8554691b70cef981dc0506786b2a82065623",
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
  "slug": "valuationorderiso--52c43e07c278aa315c52dd74",
  "source": {
    "blob": "e91e3c787e492f46bd7bed83db9675c2c6b05197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52c43e07c278aa315c52dd743e1378e5b05728442883032557869b9697747ce3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:504c2b82d55da62dc32c6cd94c1f8554691b70cef981dc0506786b2a82065623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def valuationOrderIso : Divisor M ≃o Set.Iic M.factorization where
  toFun d := ⟨(d : ℕ).factorization,
    (Nat.factorization_le_iff_dvd d.ne_zero (NeZero.ne M)).mpr d.property⟩
  invFun f := ⟨f.val.prod (· ^ ·), Nat.prod_pow_dvd_of_le_factorization f.property⟩
  left_inv d := ext (Nat.prod_factorization_pow_eq_self d.ne_zero)
  right_inv f := Subtype.ext (Nat.factorization_prod_pow_eq_self_of_le_factorization f.property)
  map_rel_iff' := fun {d e} => Nat.factorization_le_iff_dvd d.ne_zero e.ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e91e3c787e492f46bd7bed83db9675c2c6b05197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
