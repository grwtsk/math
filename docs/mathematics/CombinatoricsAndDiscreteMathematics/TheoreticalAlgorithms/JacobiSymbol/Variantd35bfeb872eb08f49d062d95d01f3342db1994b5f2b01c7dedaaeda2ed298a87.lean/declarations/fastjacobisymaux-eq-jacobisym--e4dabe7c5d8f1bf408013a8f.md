# fastJacobiSymAux.eq_jacobiSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1b52f3ab3ae18569722e315f65f59dbaef7ad88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d35bfeb872eb08f49d062d95d01f3342db1994b5f2b01c7dedaaeda2ed298a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2bcd1e79-689e-e8b4-d75f-f33d6f7e837f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c89f46ba-04a8-4e90-3e75-b51680d320af",
  "kind": "theorem",
  "lexical_name": "fastJacobiSymAux.eq_jacobiSym",
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
  "slug": "fastjacobisymaux-eq-jacobisym--e4dabe7c5d8f1bf408013a8f",
  "source": {
    "blob": "f1b52f3ab3ae18569722e315f65f59dbaef7ad88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 529,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variantd35bfeb872eb08f49d062d95d01f3342db1994b5f2b01c7dedaaeda2ed298a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4dabe7c5d8f1bf408013a8fb6943cdae16a9c4ad30d38bf85907c71d9f615c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variantd35bfeb872eb08f49d062d95d01f3342db1994b5f2b01c7dedaaeda2ed298a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c89f46ba-04a8-4e90-3e75-b51680d320af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fastJacobiSymAux.eq_jacobiSym {a b : ℕ} {flip : Bool} {ha0 : a > 0}
    (hb2 : b % 2 = 1) (hb1 : b > 1) :
    fastJacobiSymAux a b flip ha0 = if flip then -J(a | b) else J(a | b) := by
  induction a using Nat.strongRecOn generalizing b flip with | ind a IH =>
  unfold fastJacobiSymAux
  split <;> rename_i ha4
  · rw [IH (a / 4) (a.div_lt_self ha0 (by decide)) hb2 hb1]
    simp only [Int.natCast_ediv, Nat.cast_ofNat, div_four_left (a := a) (mod_cast ha4) hb2]
  split <;> rename_i ha2
  · rw [IH (a / 2) (a.div_lt_self ha0 (by decide)) hb2 hb1]
    simp only [Int.natCast_ediv, Nat.cast_ofNat, ← even_odd (a := a) (mod_cast ha2) hb2]
    by_cases h : b % 8 = 3 ∨ b % 8 = 5 <;> simp [h]; cases flip <;> simp
  split <;> rename_i ha1
  · subst ha1; simp
  split <;> rename_i hba
  · suffices J(a | b) = 0 by simp [this]
    refine eq_zero_iff.mpr ⟨fun h ↦ absurd (h ▸ hb1) (by decide), ?_⟩
    rwa [Int.gcd_natCast_natCast, Nat.gcd_eq_left (Nat.dvd_of_mod_eq_zero hba)]
  rw [IH (b % a) (b.mod_lt ha0) (Nat.mod_two_ne_zero.mp ha2) (lt_of_le_of_ne ha0 (Ne.symm ha1))]
  simp only [Int.natCast_mod, ← mod_left]
  rw [← quadratic_reciprocity_if (Nat.mod_two_ne_zero.mp ha2) hb2]
  by_cases h : a % 4 = 3 ∧ b % 4 = 3 <;> simp [h]; cases flip <;> simp

/-- Computes `J(a | b)` by reducing `b` to odd by repeated division and then using
`fastJacobiSymAux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variantd35bfeb872eb08f49d062d95d01f3342db1994b5f2b01c7dedaaeda2ed298a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variantd35bfeb872eb08f49d062d95d01f3342db1994b5f2b01c7dedaaeda2ed298a87.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b52f3ab3ae18569722e315f65f59dbaef7ad88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
