# alter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:752883c14884742b875c431ab8b67dd7025e4d04c41227c72550526b3fae27d7",
  "kind": "def",
  "lexical_name": "alter",
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
  "slug": "alter--1eedb6013e447bcacf2b017e",
  "source": {
    "blob": "42eb6c1ef7ad08c62abd02a157d5bab8a1b56ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eedb6013e447bcacf2b017e85164e70dca47f99b1b2c1a69d7b1a2499ef1556",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:752883c14884742b875c431ab8b67dd7025e4d04c41227c72550526b3fae27d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def alter
    (t : RBMap α β cmp) (k : α) (f : Option β → Option β) : RBMap α β cmp := by
  refine @RBSet.alterP _ _ t (cmp k ·.1) (alter.adapt k f) ⟨.alter (@fun _ t' p eq => ?_) t.2⟩
  cases t' <;> simp [alter.adapt, RBNode.root?] <;> split <;> intro h <;> cases h
  · exact ⟨(t.2.out.1.zoom eq).2.2.2.toRootOrdered, ⟨⟩⟩
  · refine ⟨(?a).RootOrdered_congr.2 (t.2.out.1.zoom eq).2.2.1.1, ?a⟩
    exact ⟨Std.ReflCmp.compare_self (cmp := Ordering.byKey Prod.fst cmp)⟩

end RBMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42eb6c1ef7ad08c62abd02a157d5bab8a1b56ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
