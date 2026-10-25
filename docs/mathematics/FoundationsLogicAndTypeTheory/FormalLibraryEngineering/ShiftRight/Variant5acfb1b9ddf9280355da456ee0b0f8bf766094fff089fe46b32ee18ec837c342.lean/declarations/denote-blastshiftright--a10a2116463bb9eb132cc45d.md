# denote_blastShiftRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d98444aa9dcbee552359921f0433108891af10b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:811b0e39-2886-cdaa-b417-50cffcb446f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08ecfafe-9073-5cb2-1a74-1979ffafe16c",
  "kind": "theorem",
  "lexical_name": "denote_blastShiftRight",
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
  "slug": "denote-blastshiftright--a10a2116463bb9eb132cc45d",
  "source": {
    "blob": "d98444aa9dcbee552359921f0433108891af10b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a10a2116463bb9eb132cc45d651d5ab56fe4b90ca12a13a78d2d71feb556beb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ecfafe-9073-5cb2-1a74-1979ffafe16c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastShiftRight (aig : AIG α) (target : ArbitraryShiftTarget aig w0)
    (lhs : BitVec w0) (rhs : BitVec target.n) (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w0), ⟦aig, target.target.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < target.n), ⟦aig, target.distance.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w0),
        ⟦
          (blastShiftRight aig target).aig,
          (blastShiftRight aig target).vec.get idx hidx,
          assign
        ⟧
          =
        (lhs >>> rhs).getLsbD idx := by
  intro idx hidx
  rw [BitVec.shiftRight_eq_ushiftRightRec]
  generalize hres : blastShiftRight aig target = res
  rcases target with ⟨n, target, distance⟩
  unfold blastShiftRight at hres
  dsimp only at hres
  split at hres
  next hzero =>
    dsimp only
    subst hzero
    rw [← hres]
    simp [hleft, BitVec.and_twoPow]
  · rw [← hres]
    rw [blastShiftRight.go_denote_eq]
    · omega
    · intro idx hidx
      simp only [BitVec.ushiftRightRec_zero]
      rw [blastShiftRight.twoPowShift_eq]
      · simp [hleft]
      · simp [hright]
    · intros
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftRight.twoPowShift)]
      · simp [hright]
      · simp [Ref.hgate]

namespace blastArithShiftRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d98444aa9dcbee552359921f0433108891af10b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
