# mk_subtype_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29dbfffd-f2c9-3011-973d-6895579d2caf",
  "kind": "theorem",
  "lexical_name": "mk_subtype_of_equiv",
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
  "slug": "mk-subtype-of-equiv--eddea3569b6e63b72d492211",
  "source": {
    "blob": "5f9655e2ce2091684e6d931b55c8edc99c8abdcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 529,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantaacd1dd6ca832e7ea58080c9c2f59eb1f313e887979f6ec181959639fd9e740f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eddea3569b6e63b72d492211e60990b433c38361633257fa0a77e2645d4ab703",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantaacd1dd6ca832e7ea58080c9c2f59eb1f313e887979f6ec181959639fd9e740f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29dbfffd-f2c9-3011-973d-6895579d2caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_subtype_of_equiv {α β : Type u} (p : β → Prop) (e : α ≃ β) :
    #{ a : α // p (e a) } = #{ b : β // p b } :=
  mk_congr (Equiv.subtypeEquivOfSubtype e)

end Cardinal

-- namespace Tactic

-- open Cardinal Positivity

-- Porting note: Meta code, do not port directly
-- /-- Extension for the `positivity` tactic: The cardinal power of a positive cardinal is
--  positive. -/
-- @[positivity]
-- unsafe def positivity_cardinal_pow : expr → tactic strictness
--   | q(@Pow.pow _ _ $(inst) $(a) $(b)) => do
--     let strictness_a ← core a
--     match strictness_a with
--       | positive p => positive <$> mk_app `` power_pos [b, p]
--       | _ => failed
--   |-- We already know that `0 ≤ x` for all `x : Cardinal`
--     _ =>
--     failed

-- end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantaacd1dd6ca832e7ea58080c9c2f59eb1f313e887979f6ec181959639fd9e740f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantaacd1dd6ca832e7ea58080c9c2f59eb1f313e887979f6ec181959639fd9e740f.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9655e2ce2091684e6d931b55c8edc99c8abdcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
