# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1564021fcb1ed295de67e5446f544d08572dd4c24916a356099e1101d08f88d9",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--7958f8e6674af5cf3900af92",
  "source": {
    "blob": "468f60861ff447ac05760737a55fcf8d039ae360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7958f8e6674af5cf3900af9288e2d82d7b0e3240f1af12f2f65fe1614beacd24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1564021fcb1ed295de67e5446f544d08572dd4c24916a356099e1101d08f88d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(tactic| noncomm_ring $cfg:optConfig $[$disch]? $[[$rules,*]]?) => do
    let rules' := rules.getD ⟨#[]⟩
    let tac ← `(tactic|
      (first | simp $cfg:optConfig $(disch)? only [
          -- Expand everything out.
          add_mul, mul_add, sub_eq_add_neg,
          -- Right associate all products.
          mul_assoc,
          -- Expand powers to numerals.
          pow_one, pow_zero, pow_succ,
          -- Replace multiplication by numerals with `zsmul`.
          one_mul, mul_one, zero_mul, mul_zero,
          nat_lit_mul_eq_nsmul, mul_nat_lit_eq_nsmul,
          -- Pull `zsmul n` out the front so `abel` can see them.
          mul_smul_comm, smul_mul_assoc,
          -- Pull out negations.
          neg_mul, mul_neg,
          -- user-specified simp lemmas
          $rules',*] |
        fail "`noncomm_ring` simp lemmas don't apply; try `abel` instead") <;>
      first | abel1 | abel_nf)
    -- if a manual rewrite rule is provided, we repeat the tactic
    -- (since abel might simplify and allow the rewrite to apply again)
    if rules.isSome then `(tactic| repeat1 ($tac;)) else `(tactic| $tac)

end Mathlib.Tactic.NoncommRing

/-!
We register `noncomm_ring` with the `hint` tactic.
-/

register_hint noncomm_ring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468f60861ff447ac05760737a55fcf8d039ae360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
