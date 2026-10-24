# Ordered.del

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eef9a94-5194-e035-04d9-b3908b082c6c",
  "kind": "theorem",
  "lexical_name": "Ordered.del",
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
  "slug": "ordered-del--90bb4f06b629fb0b92ef4182",
  "source": {
    "blob": "42eb6c1ef7ad08c62abd02a157d5bab8a1b56ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90bb4f06b629fb0b92ef4182e59cefb919ddd8816bf8de5e08a2eb4ab00c8021",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eef9a94-5194-e035-04d9-b3908b082c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.del : ∀ {path : Path α} {t : RBNode α} {c},
    t.Ordered cmp → path.Ordered cmp → t.All (path.RootOrdered cmp) → (path.del t c).Ordered cmp
  | .root, _, _, ht, _, _ => Ordered.setBlack.2 ht
  | .left _ parent x b, a, red, ha, ⟨hp, xb, xp, bp, hb⟩, H => by
    unfold Path.del
    have ⟨ax, ap⟩ := All_and.1 H
    exact hp.del ⟨ax, xb, ha, hb⟩ ⟨xp, ap, bp⟩
  | .right _ a x parent, b, red, hb, ⟨hp, ax, xp, ap, ha⟩, H => by
    unfold Path.del
    have ⟨xb, bp⟩ := All_and.1 H
    exact hp.del ⟨ax, xb, ha, hb⟩ ⟨xp, ap, bp⟩
  | .left _ parent x b, a, black, ha, ⟨hp, xb, xp, bp, hb⟩, H => by
    unfold Path.del
    have ⟨ax, ap⟩ := All_and.1 H
    exact hp.del (ha.balLeft ax xb hb) (ap.balLeft xp bp)
  | .right _ a x parent, b, black, hb, ⟨hp, ax, xp, ap, ha⟩, H => by
    unfold Path.del
    have ⟨xb, bp⟩ := All_and.1 H
    exact hp.del (ha.balRight ax xb hb) (ap.balRight xp bp)

end Path

/-! ## alter -/

/-- The `alter` function preserves the ordering invariants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42eb6c1ef7ad08c62abd02a157d5bab8a1b56ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
