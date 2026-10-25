# coe_int_add_eq_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9065a695943d547d44b2ece5cba2e96a14b921",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ace2db26-e564-c65d-c565-19a7e3442db0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:057c6bd4-5293-43fb-7fc1-a1e877fbfce8",
  "kind": "theorem",
  "lexical_name": "coe_int_add_eq_mod",
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
  "slug": "coe-int-add-eq-mod--a7c9f7050074cb49602abdcc",
  "source": {
    "blob": "6a9065a695943d547d44b2ece5cba2e96a14b921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7c9f7050074cb49602abdcce8bbc394d30c4cd10f8db6849f7d97c904e0c338",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:057c6bd4-5293-43fb-7fc1-a1e877fbfce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_int_add_eq_mod {n : Nat} (u v : Fin n) :
    ((u + v : Fin n) : Int) = ((u : Int) + (v : Int)) % n := by
  omega

-- Write `a + b` as `if (a + b : ℕ) < n then (a + b : ℤ) else (a + b : ℤ) - n` and
-- similarly `a - b` as `if (b : ℕ) ≤ a then (a - b : ℤ) else (a - b : ℤ) + n`.
attribute [fin_omega] coe_int_sub_eq_ite coe_int_add_eq_ite

-- Rewrite inequalities in `Fin` to inequalities in `ℕ`
attribute [fin_omega] Fin.lt_iff_val_lt_val Fin.le_iff_val_le_val

-- Rewrite `1 : Fin (n + 2)` to `1 : ℤ`
attribute [fin_omega] val_one

/--
`fin_omega` is a preprocessor for `omega` to handle inequalities in `Fin`.
It rewrites all hypotheses and the goal, turning statements about addition, subtraction and
inequalities in `Fin n` into statements that `omega` can use/solve.
Note that this involves a lot of case splitting, so may be slow.
-/
-- Further adjustment to the simp set can probably make this more powerful.
-- Please experiment and PR updates!
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9065a695943d547d44b2ece5cba2e96a14b921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
