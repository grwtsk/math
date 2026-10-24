# divRight_eq_mulRight_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8e3bff2-9b87-204e-9822-dd63d293e298",
  "kind": "theorem",
  "lexical_name": "divRight_eq_mulRight_inv",
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
  "slug": "divright-eq-mulright-inv--c53c0a165c46d89330436db7",
  "source": {
    "blob": "561bb0fd82a19aa5e09d5e3e8e41d8760525d8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53c0a165c46d89330436db7171e78034b53812fead2cda6a6c86b7d2200b629",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e3bff2-9b87-204e-9822-dd63d293e298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divRight_eq_mulRight_inv (a : G) : Equiv.divRight a = Equiv.mulRight a⁻¹ :=
  ext fun _ => div_eq_mul_inv _ _
#align equiv.div_right_eq_mul_right_inv Equiv.divRight_eq_mulRight_inv
#align equiv.sub_right_eq_add_right_neg Equiv.subRight_eq_addRight_neg

end Group

end Equiv

-- Porting note: we don't put `@[simp]` on the additive version;
-- mysteriously simp can already prove that one (although not the multiplicative one)!
-- porting note: `@[simps apply]` removed because right now it's generating lemmas which
-- aren't in simp normal form (they contain a `toFun`)
/-- In a `DivisionCommMonoid`, `Equiv.inv` is a `MulEquiv`. There is a variant of this
`MulEquiv.inv' G : G ≃* Gᵐᵒᵖ` for the non-commutative case. -/
@[to_additive (attr := simps apply)
  "When the `AddGroup` is commutative, `Equiv.neg` is an `AddEquiv`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561bb0fd82a19aa5e09d5e3e8e41d8760525d8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
