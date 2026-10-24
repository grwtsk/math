# previousReturn_firstReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d085681e-4062-22e2-eff8-a2814ff716d4",
  "kind": "theorem",
  "lexical_name": "previousReturn_firstReturn",
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
  "slug": "previousreturn-firstreturn--61b7a4a65a8a0fffd17e1616",
  "source": {
    "blob": "17db2565bdef52ae10964e870a60c8aedb5c7473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b7a4a65a8a0fffd17e1616e32efb8dd7a47bd32dec5947fcc529dfd593406e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d085681e-4062-22e2-eff8-a2814ff716d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem previousReturn_firstReturn
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    previousReturn P Valid (firstReturn P Valid x) = x := by
  let a := firstReturnTime P Valid x
  let y := firstReturn P Valid x
  let b := firstReturnTime P.symm Valid y
  have ha : 0 < a := firstReturnTime_pos P Valid x
  have hbackAtA : ReturnAt P.symm Valid y.1 a := by
    refine ⟨ha, ?_⟩
    change Valid ((P.symm ^ a) ((P ^ a) x.1))
    rw [symm_pow_apply_pow_apply]
    exact x.2
  have hba : b ≤ a :=
    firstReturnTime_le_of_return P.symm Valid y hbackAtA
  have hab : a ≤ b := by
    by_contra hnot
    have hlt : b < a := Nat.lt_of_not_ge hnot
    have hpos : 0 < a - b := Nat.sub_pos_of_lt hlt
    have hshort : a - b < a := Nat.sub_lt ha (firstReturnTime_pos P.symm Valid y)
    apply firstReturnTime_minimal P Valid x hpos hshort
    have hvalid := firstReturnTime_returns P.symm Valid y
    change Valid ((P.symm ^ b) ((P ^ a) x.1)) at hvalid
    rwa [symm_pow_apply_pow_apply_of_le P x.1 hba] at hvalid
  have hab_eq : a = b := Nat.le_antisymm hab hba
  apply Subtype.ext
  change (P.symm ^ b) ((P ^ a) x.1) = x.1
  rw [← hab_eq, symm_pow_apply_pow_apply]

/-- Forward first return undoes backward first return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17db2565bdef52ae10964e870a60c8aedb5c7473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
