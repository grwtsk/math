# instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10254d761f6cfd80ecd5a76c30cdb7eadfb6a32249a7f6eee6ac7144c8a0afd0",
  "kind": "instance",
  "lexical_name": "instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual",
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
  "slug": "instlinearorderedaddcommmonoidwithtopadditiveorderdual--cf1da95cffa96cb70daa909a",
  "source": {
    "blob": "518aba381de380ce15a734e7976c1ec734121b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf1da95cffa96cb70daa909abdff164da4bbc15f2f11b4fd7151f20512ee9897",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10254d761f6cfd80ecd5a76c30cdb7eadfb6a32249a7f6eee6ac7144c8a0afd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual :
    LinearOrderedAddCommMonoidWithTop (Additive αᵒᵈ) :=
  { Additive.orderedAddCommMonoid, Additive.linearOrder with
    top := (0 : α)
    top_add' := fun a ↦ zero_mul (Additive.toMul a)
    le_top := fun _ ↦ zero_le' }
#align additive.linear_ordered_add_comm_monoid_with_top instLinearOrderedAddCommMonoidWithTopAdditiveOrderDual

end LinearOrderedCommMonoid

variable [LinearOrderedCommGroupWithZero α]

-- TODO: Do we really need the following two?
/-- Alias of `mul_le_one'` for unification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithZero/Variant10633ce81726ad839e1fa1e8b61b887cdc5a3b322fbf802c543d9eab4c104fe1.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518aba381de380ce15a734e7976c1ec734121b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
