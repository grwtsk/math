# Ordered.ins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d517537-0e63-a123-19b6-817f181d20f0",
  "kind": "theorem",
  "lexical_name": "Ordered.ins",
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
  "slug": "ordered-ins--d7aea98fcac073729bc715fd",
  "source": {
    "blob": "42eb6c1ef7ad08c62abd02a157d5bab8a1b56ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7aea98fcac073729bc715fdc0736d24fb8d436982dae46c204ace8978fa2102",
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

Occurrence: `result:3d517537-0e63-a123-19b6-817f181d20f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.ins : ∀ {path : Path α} {t : RBNode α},
    t.Ordered cmp → path.Ordered cmp → t.All (path.RootOrdered cmp) → (path.ins t).Ordered cmp
  | .root, _, ht, _, _ => Ordered.setBlack.2 ht
  | .left red parent x b, a, ha, ⟨hp, xb, xp, bp, hb⟩, H => by
    unfold Path.ins
    have ⟨ax, ap⟩ := All_and.1 H
    exact hp.ins ⟨ax, xb, ha, hb⟩ ⟨xp, ap, bp⟩
  | .right red a x parent, b, hb, ⟨hp, ax, xp, ap, ha⟩, H => by
    unfold Path.ins
    have ⟨xb, bp⟩ := All_and.1 H
    exact hp.ins ⟨ax, xb, ha, hb⟩ ⟨xp, ap, bp⟩
  | .left black parent x b, a, ha, ⟨hp, xb, xp, bp, hb⟩, H => by
    unfold Path.ins
    have ⟨ax, ap⟩ := All_and.1 H
    exact hp.ins (ha.balance1 ax xb hb) (balance1_All.2 ⟨xp, ap, bp⟩)
  | .right black a x parent, b, hb, ⟨hp, ax, xp, ap, ha⟩, H => by
    unfold Path.ins
    have ⟨xb, bp⟩ := All_and.1 H
    exact hp.ins (ha.balance2 ax xb hb) (balance2_All.2 ⟨xp, ap, bp⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant650f01d70c321dc38df2223943bbcec69df13b6d9f43bc6ad785772f3c215312.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42eb6c1ef7ad08c62abd02a157d5bab8a1b56ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
