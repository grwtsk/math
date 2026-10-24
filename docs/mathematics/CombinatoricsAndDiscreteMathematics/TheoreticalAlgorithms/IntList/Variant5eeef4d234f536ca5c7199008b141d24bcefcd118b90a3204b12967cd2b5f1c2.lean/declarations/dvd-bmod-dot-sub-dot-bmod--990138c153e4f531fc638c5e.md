# dvd_bmod_dot_sub_dot_bmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b19b7119-7d44-0335-a335-db5a64960cf5",
  "kind": "theorem",
  "lexical_name": "dvd_bmod_dot_sub_dot_bmod",
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
  "slug": "dvd-bmod-dot-sub-dot-bmod--990138c153e4f531fc638c5e",
  "source": {
    "blob": "862dbff048d23dda8eefeee03837bc08080fc195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 463,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5eeef4d234f536ca5c7199008b141d24bcefcd118b90a3204b12967cd2b5f1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:990138c153e4f531fc638c5ef163a08ddd9b78e9e305911f242e537706e66c87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5eeef4d234f536ca5c7199008b141d24bcefcd118b90a3204b12967cd2b5f1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b19b7119-7d44-0335-a335-db5a64960cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_bmod_dot_sub_dot_bmod (m : Nat) (xs ys : IntList) :
    (m : Int) ∣ bmod_dot_sub_dot_bmod m xs ys := by
  dsimp [bmod_dot_sub_dot_bmod]
  rw [Int.dvd_iff_emod_eq_zero]
  induction xs generalizing ys with
  | nil => simp
  | cons x xs ih =>
    cases ys with
    | nil => simp
    | cons y ys =>
      simp only [IntList.dot_cons_cons, List.map_cons]
      specialize ih ys
      rw [Int.sub_emod, Int.bmod_emod] at ih
      rw [Int.sub_emod, Int.bmod_emod, Int.add_emod, Int.add_emod (Int.bmod x m * y),
        ← Int.sub_emod, ← Int.sub_sub, Int.sub_eq_add_neg, Int.sub_eq_add_neg,
        Int.add_assoc (x * y % m), Int.add_comm (IntList.dot _ _ % m), ← Int.add_assoc,
        Int.add_assoc, Int.add_neg_eq_sub, Int.add_neg_eq_sub, Int.add_emod, ih, Int.add_zero,
        Int.emod_emod, Int.mul_emod, Int.mul_emod (Int.bmod x m), Int.bmod_emod, Int.sub_self,
        Int.zero_emod]

end IntList

end Lean.Omega
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5eeef4d234f536ca5c7199008b141d24bcefcd118b90a3204b12967cd2b5f1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5eeef4d234f536ca5c7199008b141d24bcefcd118b90a3204b12967cd2b5f1c2.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862dbff048d23dda8eefeee03837bc08080fc195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
