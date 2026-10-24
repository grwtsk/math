# OrderIso.isIdempotentElemMulZeroAddOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8082027a730688ab63904eb44d1a9c500374f05e3b509b2e27d61370978e6fc",
  "kind": "def",
  "lexical_name": "OrderIso.isIdempotentElemMulZeroAddOne",
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
  "slug": "orderiso-isidempotentelemmulzeroaddone--e893403c0859baa89f2914c3",
  "source": {
    "blob": "1b414eef859e3fcbb65e0fdfb9cb41654787ba2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e893403c0859baa89f2914c34e84b7a9ac886521f55b51a9dae80f1191f522e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8082027a730688ab63904eb44d1a9c500374f05e3b509b2e27d61370978e6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderIso.isIdempotentElemMulZeroAddOne :
    {a : R // IsIdempotentElem a} ≃o {a : R × R // a.1 * a.2 = 0 ∧ a.1 + a.2 = 1} where
  toFun a := ⟨(a, 1 - a), by simp_rw [mul_sub, mul_one, a.2.eq, sub_self], by rw [add_sub_cancel]⟩
  invFun a := ⟨a.1.1, (IsIdempotentElem.of_mul_add a.2.1 a.2.2).1⟩
  left_inv _ := rfl
  right_inv a := Subtype.ext <| Prod.ext rfl <| sub_eq_of_eq_add <| a.2.2.symm.trans (add_comm ..)
  map_rel_iff' := Iff.rfl

end CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b414eef859e3fcbb65e0fdfb9cb41654787ba2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
