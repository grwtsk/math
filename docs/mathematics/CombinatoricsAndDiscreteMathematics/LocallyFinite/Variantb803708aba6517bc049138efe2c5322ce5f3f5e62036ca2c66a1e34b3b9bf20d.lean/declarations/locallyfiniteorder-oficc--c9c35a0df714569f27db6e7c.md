# LocallyFiniteOrder.ofIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01af0e787a6589559438a941ee736a5def5a3b475a6093ede8e2f60f35f98264",
  "kind": "def",
  "lexical_name": "LocallyFiniteOrder.ofIcc",
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
  "slug": "locallyfiniteorder-oficc--c9c35a0df714569f27db6e7c",
  "source": {
    "blob": "85cee2cb0851fc43a44df6e83f34895cf214a5ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9c35a0df714569f27db6e7c9cce21df37323c786ce35c7b7de6cbaf31621ebc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01af0e787a6589559438a941ee736a5def5a3b475a6093ede8e2f60f35f98264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyFiniteOrder.ofIcc (α : Type*) [PartialOrder α] [DecidableEq α]
    (finsetIcc : α → α → Finset α) (mem_Icc : ∀ a b x, x ∈ finsetIcc a b ↔ a ≤ x ∧ x ≤ b) :
    LocallyFiniteOrder α :=
  { finsetIcc
    finsetIco := fun a b => (finsetIcc a b).filter fun x => x ≠ b
    finsetIoc := fun a b => (finsetIcc a b).filter fun x => a ≠ x
    finsetIoo := fun a b => (finsetIcc a b).filter fun x => a ≠ x ∧ x ≠ b
    finset_mem_Icc := mem_Icc
    finset_mem_Ico := fun a b x => by rw [Finset.mem_filter, mem_Icc, and_assoc, lt_iff_le_and_ne]
    finset_mem_Ioc := fun a b x => by
      rw [Finset.mem_filter, mem_Icc, and_right_comm, lt_iff_le_and_ne]
    finset_mem_Ioo := fun a b x => by
      rw [Finset.mem_filter, mem_Icc, and_and_and_comm, lt_iff_le_and_ne, lt_iff_le_and_ne] }
#align locally_finite_order.of_Icc LocallyFiniteOrder.ofIcc

/-- A constructor from a definition of `Finset.Iic` alone, the other ones being derived by removing
the ends. As opposed to `LocallyFiniteOrderTop.ofIci`, this one requires `DecidableRel (· ≤ ·)` but
only `Preorder`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb803708aba6517bc049138efe2c5322ce5f3f5e62036ca2c66a1e34b3b9bf20d.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85cee2cb0851fc43a44df6e83f34895cf214a5ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
