# onModCases_start

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdb0c37b0292c1a48eceebb1f9c738f167344d825edd393a5c3dd385e0c2df3e",
  "kind": "def",
  "lexical_name": "onModCases_start",
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
  "slug": "onmodcases-start--48e124d51b4d7fd15fd6b5a4",
  "source": {
    "blob": "5a606613e2a632d652fade54962a6de73c325757",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant5ca701383d1c44d8d9bc84a0169f433ae27edc31cda3e96a0392952f574823fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48e124d51b4d7fd15fd6b5a4a3bfe9ae104584f5de17cd5c80cdebec53fb1b61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant5ca701383d1c44d8d9bc84a0169f433ae27edc31cda3e96a0392952f574823fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdb0c37b0292c1a48eceebb1f9c738f167344d825edd393a5c3dd385e0c2df3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def onModCases_start (p : Sort*) (a : ℤ) (n : ℕ) (hn : Nat.ble 1 n = true)
    (H : OnModCases n a (nat_lit 0) p) : p :=
  H (a % ↑n).toNat <| by
    have := ofNat_pos.2 <| Nat.le_of_ble_eq_true hn
    have nonneg := emod_nonneg a <| Int.ne_of_gt this
    refine ⟨Nat.zero_le _, ?_, ?_⟩
    · rw [Int.toNat_lt nonneg]; exact Int.emod_lt_of_pos _ this
    · rw [Int.ModEq, Int.toNat_of_nonneg nonneg, emod_emod]

/--
The end point is that once we have reduced to `∃ z, n ≤ z < n ∧ a ≡ z (mod n)`
there are no more cases to consider.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant5ca701383d1c44d8d9bc84a0169f433ae27edc31cda3e96a0392952f574823fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant5ca701383d1c44d8d9bc84a0169f433ae27edc31cda3e96a0392952f574823fe.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a606613e2a632d652fade54962a6de73c325757` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
