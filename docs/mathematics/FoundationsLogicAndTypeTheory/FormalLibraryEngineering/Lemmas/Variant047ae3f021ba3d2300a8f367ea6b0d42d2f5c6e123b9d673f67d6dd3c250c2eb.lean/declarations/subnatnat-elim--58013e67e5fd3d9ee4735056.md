# subNatNat_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e17e86d-83f0-41bd-160d-92f8890ae6f0",
  "kind": "theorem",
  "lexical_name": "subNatNat_elim",
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
  "slug": "subnatnat-elim--58013e67e5fd3d9ee4735056",
  "source": {
    "blob": "cacf6df61c305b006f4ff5fa954a6341a8d8c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58013e67e5fd3d9ee4735056ff6f44d15d85337f770e6be95849d31a8c32ab1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e17e86d-83f0-41bd-160d-92f8890ae6f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subNatNat_elim (m n : Nat) (motive : Nat → Nat → Int → Prop)
    (hp : ∀ i n, motive (n + i) n i)
    (hn : ∀ i m, motive m (m + i + 1) -[i+1]) :
    motive m n (subNatNat m n) := by
  unfold subNatNat
  match h : n - m with
  | 0 =>
    have ⟨k, h⟩ := Nat.le.dest (Nat.le_of_sub_eq_zero h)
    rw [h.symm, Nat.add_sub_cancel_left]; apply hp
  | succ k =>
    rw [Nat.sub_eq_iff_eq_add (Nat.le_of_lt (Nat.lt_of_sub_eq_succ h))] at h
    rw [h, Nat.add_comm]; apply hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cacf6df61c305b006f4ff5fa954a6341a8d8c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
