# sup_opow_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb817d700638943720999d14e7cec3b6e36b7323",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43080413-1944-b8cc-1cab-aef6d29903cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fce06a61-1be1-79c5-9600-9b993b98501a",
  "kind": "theorem",
  "lexical_name": "sup_opow_nat",
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
  "slug": "sup-opow-nat--3d6cdc4beb0546b16c28494c",
  "source": {
    "blob": "eb817d700638943720999d14e7cec3b6e36b7323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6cdc4beb0546b16c28494c63296a91d5b511670d38bd95cc63adc5dfd0bf08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fce06a61-1be1-79c5-9600-9b993b98501a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_opow_nat {o : Ordinal} (ho : 0 < o) : (sup fun n : ℕ => o^n) = (o^ω) := by
  rcases lt_or_eq_of_le (one_le_iff_pos.2 ho) with (ho₁ | rfl)
  · exact (opow_isNormal ho₁).apply_omega
  · rw [one_opow]
    refine' le_antisymm (sup_le fun n => by rw [one_opow]) _
    convert le_sup (fun n : ℕ => 1^n) 0
    rw [Nat.cast_zero, opow_zero]
#align ordinal.sup_opow_nat Ordinal.sup_opow_nat

end Ordinal

-- Porting note: TODO: Port this meta code.

-- namespace Tactic

-- open Ordinal Mathlib.Meta.Positivity

-- /-- Extension for the `positivity` tactic: `ordinal.opow` takes positive values on positive
-- inputs. -/
-- @[positivity]
-- unsafe def positivity_opow : expr → tactic strictness
--   | q(@Pow.pow _ _ $(inst) $(a) $(b)) => do
--     let strictness_a ← core a
--     match strictness_a with
--       | positive p => positive <$> mk_app `` opow_pos [b, p]
--       | _ => failed
--   |-- We already know that `0 ≤ x` for all `x : Ordinal`
--     _ =>
--     failed
-- #align tactic.positivity_opow Tactic.positivity_opow

-- end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb817d700638943720999d14e7cec3b6e36b7323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
