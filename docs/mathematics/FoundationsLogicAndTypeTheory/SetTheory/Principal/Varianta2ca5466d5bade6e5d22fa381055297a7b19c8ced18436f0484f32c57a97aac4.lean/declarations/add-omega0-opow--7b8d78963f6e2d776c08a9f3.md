# add_omega0_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02b9f42b-e4a0-5712-0343-71f142e65ac5",
  "kind": "theorem",
  "lexical_name": "add_omega0_opow",
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
  "slug": "add-omega0-opow--7b8d78963f6e2d776c08a9f3",
  "source": {
    "blob": "68c6c8e702a156de5d956d82b17329d6fe4f232d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b8d78963f6e2d776c08a9f3302d841f1f8cc2653750d6d61dfd0fff6fee608b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02b9f42b-e4a0-5712-0343-71f142e65ac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_omega0_opow (h : a < ω ^ b) : a + ω ^ b = ω ^ b := by
  refine le_antisymm ?_ (le_add_left _ a)
  induction b using limitRecOn with
  | zero =>
    rw [opow_zero, ← succ_zero, lt_succ_iff, Ordinal.le_zero] at h
    rw [h, zero_add]
  | succ =>
    rw [opow_succ] at h
    rcases (lt_mul_of_limit isLimit_omega0).1 h with ⟨x, xo, ax⟩
    apply (add_le_add_right ax.le _).trans
    rw [opow_succ, ← mul_add, add_omega0 xo]
  | isLimit b l IH =>
    rcases (lt_opow_of_limit omega0_ne_zero l).1 h with ⟨x, xb, ax⟩
    apply (((isNormal_add_right a).trans <| isNormal_opow one_lt_omega0).limit_le l).2
    intro y yb
    calc a + ω ^ y ≤ a + ω ^ max x y :=
      add_le_add_left (opow_le_opow_right omega0_pos (le_max_right x y)) _
    _ ≤ ω ^ max x y :=
      IH _ (max_lt xb yb) <| ax.trans_le <| opow_le_opow_right omega0_pos <| le_max_left x y
    _ ≤ ω ^ b :=
      opow_le_opow_right omega0_pos <| (max_lt xb yb).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68c6c8e702a156de5d956d82b17329d6fe4f232d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
