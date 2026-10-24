# conditionallyCompleteLatticeOfsSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9063242620c8ae9c5fbce65a9a9218cab327c0d25fb7ed102d46226ea18e89a5",
  "kind": "def",
  "lexical_name": "conditionallyCompleteLatticeOfsSup",
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
  "slug": "conditionallycompletelatticeofssup--71f3834de03e63d7664e5126",
  "source": {
    "blob": "9f4fea77303a17484f4a1432aaf59884064a2a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9a69d25c4afe72504d2c2ed512f84f25b092fe149908024cbcf96e1510687df0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71f3834de03e63d7664e5126247904f4d0ff725fae1f9510ba0981d829edcc0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9a69d25c4afe72504d2c2ed512f84f25b092fe149908024cbcf96e1510687df0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9063242620c8ae9c5fbce65a9a9218cab327c0d25fb7ed102d46226ea18e89a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conditionallyCompleteLatticeOfsSup (α : Type*) [H1 : PartialOrder α] [H2 : SupSet α]
    (bddAbove_pair : ∀ a b : α, BddAbove ({a, b} : Set α))
    (bddBelow_pair : ∀ a b : α, BddBelow ({a, b} : Set α))
    (isLUB_sSup : ∀ s : Set α, BddAbove s → s.Nonempty → IsLUB s (sSup s)) :
    ConditionallyCompleteLattice α where
  __ := Lattice.ofIsLUBofIsGLB (fun a b ↦ sSup {a, b}) (fun a b ↦ sSup (lowerBounds {a, b}))
    (fun a b ↦ isLUB_sSup {a, b} (bddAbove_pair a b) (insert_nonempty _ _))
    (fun a b ↦ isLUB_lowerBounds.mp <| isLUB_sSup (lowerBounds {a, b})
      (insert_nonempty _ _).bddAbove_lowerBounds (bddBelow_pair a b))
  __ := H2
  sInf s := sSup (lowerBounds s)
  isLUB_csSup _ hn hb := isLUB_sSup _ hb hn
  isGLB_csInf _ hn hb := isLUB_lowerBounds.mp (isLUB_sSup _ hn.bddAbove_lowerBounds hb)

/-- A version of `conditionallyCompleteLatticeOfsSup` when we already know that `α` is a lattice.

This should only be used when it is both hard and unnecessary to provide `sInf` explicitly. -/
@[to_dual (attr := instance_reducible)
/-- A version of `conditionallyCompleteLatticeOfsInf` when we already know that `α` is a lattice.

This should only be used when it is both hard and unnecessary to provide `sSup` explicitly. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9a69d25c4afe72504d2c2ed512f84f25b092fe149908024cbcf96e1510687df0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant9a69d25c4afe72504d2c2ed512f84f25b092fe149908024cbcf96e1510687df0.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4fea77303a17484f4a1432aaf59884064a2a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
