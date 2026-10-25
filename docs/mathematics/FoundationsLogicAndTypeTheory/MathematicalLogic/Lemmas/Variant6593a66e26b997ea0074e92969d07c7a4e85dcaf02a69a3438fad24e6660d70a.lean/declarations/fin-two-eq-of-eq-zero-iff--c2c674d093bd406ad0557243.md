# fin_two_eq_of_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f64be4266e5dfc4214951b34e3d8e52ec97a5b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 647,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/6593a66e26b997ea0074e92969d07c7a4e85dcaf02a69a3438fad24e6660d70a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35610b9b-386e-5fd0-0b9a-99a01bf28d89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a656db1-aa7b-a5d3-0b62-3edbc65f11ac",
  "kind": "theorem",
  "lexical_name": "fin_two_eq_of_eq_zero_iff",
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
  "slug": "fin-two-eq-of-eq-zero-iff--c2c674d093bd406ad0557243",
  "source": {
    "blob": "0f64be4266e5dfc4214951b34e3d8e52ec97a5b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 647,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6593a66e26b997ea0074e92969d07c7a4e85dcaf02a69a3438fad24e6660d70a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c674d093bd406ad05572436461cf7c6d6a465ffa3dd0594ac7d855a2c9ef86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6593a66e26b997ea0074e92969d07c7a4e85dcaf02a69a3438fad24e6660d70a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a656db1-aa7b-a5d3-0b62-3edbc65f11ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fin_two_eq_of_eq_zero_iff : ∀ {a b : Fin 2}, (a = 0 ↔ b = 0) → a = b := by
  simp only [forall_fin_two]; decide

/--
Define `motive i` by reverse induction on `i : Fin (n + 1)` via induction on the underlying `Nat`
value. This function has two arguments: `last` handles the base case on `motive (Fin.last n)`,
and `cast` defines the inductive step using `motive i.succ`, inducting downwards.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6593a66e26b997ea0074e92969d07c7a4e85dcaf02a69a3438fad24e6660d70a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6593a66e26b997ea0074e92969d07c7a4e85dcaf02a69a3438fad24e6660d70a.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f64be4266e5dfc4214951b34e3d8e52ec97a5b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
