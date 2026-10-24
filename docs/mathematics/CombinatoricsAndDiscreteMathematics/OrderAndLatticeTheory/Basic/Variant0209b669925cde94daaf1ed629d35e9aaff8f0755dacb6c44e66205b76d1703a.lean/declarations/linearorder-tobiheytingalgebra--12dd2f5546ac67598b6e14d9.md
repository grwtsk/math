# LinearOrder.toBiheytingAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74bf828b14303b1dfb2c6d06a11e0c559390057a510cc3ac706937221bc7b43a",
  "kind": "def",
  "lexical_name": "LinearOrder.toBiheytingAlgebra",
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
  "slug": "linearorder-tobiheytingalgebra--12dd2f5546ac67598b6e14d9",
  "source": {
    "blob": "aa05f6bd6780679e3ecc7d2d3a0960ff7a4c44d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1237,
    "line": 1214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0209b669925cde94daaf1ed629d35e9aaff8f0755dacb6c44e66205b76d1703a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12dd2f5546ac67598b6e14d9adbccfaa9604c8f2a6f68b2b6b34d335c1b8b721",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0209b669925cde94daaf1ed629d35e9aaff8f0755dacb6c44e66205b76d1703a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74bf828b14303b1dfb2c6d06a11e0c559390057a510cc3ac706937221bc7b43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1214–1237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearOrder.toBiheytingAlgebra [LinearOrder α] [BoundedOrder α] : BiheytingAlgebra α :=
  { LinearOrder.toLattice, ‹BoundedOrder α› with
    himp := fun a b => if a ≤ b then ⊤ else b,
    compl := fun a => if a = ⊥ then ⊤ else ⊥,
    le_himp_iff := fun a b c => by
      change _ ≤ ite _ _ _ ↔ _
      split_ifs with h
      · exact iff_of_true le_top (inf_le_of_right_le h)
      · rw [inf_le_iff, or_iff_left h],
    himp_bot := fun a => if_congr le_bot_iff rfl rfl, sdiff := fun a b => if a ≤ b then ⊥ else a,
    hnot := fun a => if a = ⊤ then ⊥ else ⊤,
    sdiff_le_iff := fun a b c => by
      change ite _ _ _ ≤ _ ↔ _
      split_ifs with h
      · exact iff_of_true bot_le (le_sup_of_le_left h)
      · rw [le_sup_iff, or_iff_right h],
    top_sdiff := fun a => if_congr top_le_iff rfl rfl }
#align linear_order.to_biheyting_algebra LinearOrder.toBiheytingAlgebra

section lift

-- See note [reducible non-instances]
/-- Pullback a `GeneralizedHeytingAlgebra` along an injection. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0209b669925cde94daaf1ed629d35e9aaff8f0755dacb6c44e66205b76d1703a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0209b669925cde94daaf1ed629d35e9aaff8f0755dacb6c44e66205b76d1703a.lean#L1214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa05f6bd6780679e3ecc7d2d3a0960ff7a4c44d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
