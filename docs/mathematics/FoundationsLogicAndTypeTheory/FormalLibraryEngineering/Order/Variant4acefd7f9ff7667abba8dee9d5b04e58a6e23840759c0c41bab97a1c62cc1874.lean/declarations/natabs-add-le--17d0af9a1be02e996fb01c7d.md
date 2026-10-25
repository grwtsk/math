# natAbs_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7901eb7-160a-e5d5-cfdb-b99a976371b9",
  "kind": "theorem",
  "lexical_name": "natAbs_add_le",
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
  "slug": "natabs-add-le--17d0af9a1be02e996fb01c7d",
  "source": {
    "blob": "a85f97229f1cc38183471a18f15b4b1ce06cde48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1444,
    "line": 1426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17d0af9a1be02e996fb01c7dfed25f9c51bf37c2b0d7684942c2966c733e55e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7901eb7-160a-e5d5-cfdb-b99a976371b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1426–1444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_add_le (a b : Int) : natAbs (a + b) ≤ natAbs a + natAbs b := by
  suffices ∀ a b : Nat, natAbs (subNatNat a b.succ) ≤ (a + b).succ by
    match a, b with
    | (a:Nat), (b:Nat) => rw [← natCast_add, natAbs_natCast]; apply Nat.le_refl
    | (a:Nat), -[b+1]  => rw [natAbs_natCast, natAbs_negSucc]; apply this
    | -[a+1],  (b:Nat) =>
      rw [natAbs_negSucc, natAbs_natCast, Nat.succ_add, Nat.add_comm a b]; apply this
    | -[a+1],  -[b+1]  => rw [natAbs_negSucc, succ_add]; apply Nat.le_refl
  refine fun a b => subNatNat_elim a b.succ
    (fun m n i => n = b.succ → natAbs i ≤ (m + b).succ) ?_
    (fun i n (e : (n + i).succ = _) => ?_) rfl
  · intro i n h
    subst h
    rw [Nat.add_comm _ i, Nat.add_assoc]
    exact Nat.le_add_right i (b.succ + b).succ
  · apply succ_le_succ
    rw [← succ.inj e, ← Nat.add_assoc, Nat.add_comm]
    apply Nat.le_add_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean#L1426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85f97229f1cc38183471a18f15b4b1ce06cde48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
