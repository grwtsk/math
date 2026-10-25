# shiftLeft_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5dd9168-e050-8a07-71c1-2a4ad1f5716e",
  "kind": "theorem",
  "lexical_name": "shiftLeft_add",
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
  "slug": "shiftleft-add--8ad4900ee4442f1f7eb12155",
  "source": {
    "blob": "104d452e5308bbaa39a509864a2a8c4efa741447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ad4900ee4442f1f7eb12155ec360994de51f061a03ea9c718829965f06db595",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5dd9168-e050-8a07-71c1-2a4ad1f5716e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft_add : ∀ (m : ℤ) (n : ℕ) (k : ℤ), m <<< (n + k) = (m <<< (n : ℤ)) <<< k
  | (m : ℕ), n, (k : ℕ) =>
    congr_arg ofNat (by simp [Nat.shiftLeft_eq, Nat.pow_add, mul_assoc])
  | -[_+1], _, (k : ℕ) => congr_arg negSucc (Nat.shiftLeft'_add _ _ _ _)
  | (m : ℕ), n, -[k+1] =>
    subNatNat_elim n k.succ (fun n k i => (↑m) <<< i = (Nat.shiftLeft' false m n) >>> k)
      (fun (i n : ℕ) =>
        by dsimp; simp [← Nat.shiftLeft_sub _ , Nat.add_sub_cancel_left])
      fun i n => by
        dsimp
        simp_rw [negSucc_eq, shiftLeft_neg, Nat.shiftLeft'_false, Nat.shiftRight_add,
          ← Nat.shiftLeft_sub _ le_rfl, Nat.sub_self, Nat.shiftLeft_zero, ← shiftRight_natCast,
          ← shiftRight_add', Nat.cast_one]
  | -[m+1], n, -[k+1] =>
    subNatNat_elim n k.succ
      (fun n k i => -[m+1] <<< i = -[(Nat.shiftLeft' true m n) >>> k+1])
      (fun i n =>
        congr_arg negSucc <| by
          rw [← Nat.shiftLeft'_sub, Nat.add_sub_cancel_left]; apply Nat.le_add_right)
      fun i n =>
      congr_arg negSucc <| by rw [add_assoc, Nat.shiftRight_add, ← Nat.shiftLeft'_sub _ _ le_rfl,
          Nat.sub_self, Nat.shiftLeft']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104d452e5308bbaa39a509864a2a8c4efa741447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
