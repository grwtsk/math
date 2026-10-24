# eq_of_xn_modEq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 776,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ce64455-24de-bca8-7082-7bfa8c36837d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69947d72-a6ef-4257-9839-14db907b090e",
  "kind": "theorem",
  "lexical_name": "eq_of_xn_modEq'",
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
  "slug": "eq-of-xn-modeq--61f84cb845235ab986b4d36e",
  "source": {
    "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 776,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f84cb845235ab986b4d36ed166c74f3deb142e7ba376d60b7b0c5673d3e558",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69947d72-a6ef-4257-9839-14db907b090e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_xn_modEq' {i j n} (ipos : 0 < i) (hin : i ≤ n) (j4n : j ≤ 4 * n)
    (h : xn a1 j ≡ xn a1 i [MOD xn a1 n]) : j = i ∨ j + i = 4 * n :=
  have i2n : i ≤ 2 * n := by apply le_trans hin; rw [two_mul]; apply Nat.le_add_left
  (le_or_gt j (2 * n)).imp
    (fun j2n : j ≤ 2 * n =>
      eq_of_xn_modEq a1 j2n i2n h fun a2 n1 =>
        ⟨fun j0 i2 => by rw [n1, i2] at hin; exact absurd hin (by decide), fun _ i0 =>
          _root_.ne_of_gt ipos i0⟩)
    fun j2n : 2 * n < j =>
    suffices i = 4 * n - j by rw [this, add_tsub_cancel_of_le j4n]
    have j42n : 4 * n - j ≤ 2 * n :=
      Nat.le_of_add_le_add_right <| by
        rw [tsub_add_cancel_of_le j4n, show 4 * n = 2 * n + 2 * n from right_distrib 2 2 n]
        exact Nat.add_le_add_left (le_of_lt j2n) _
    eq_of_xn_modEq a1 i2n j42n
      (h.symm.trans <| by
        let t := xn_modEq_x4n_sub a1 j42n
        rwa [tsub_tsub_cancel_of_le j4n] at t)
      fun a2 n1 =>
      ⟨fun i0 => absurd i0 (_root_.ne_of_gt ipos), fun i2 => by
        rw [n1, i2] at hin
        exact absurd hin (by decide)⟩
#align pell.eq_of_xn_modeq' Pell.eq_of_xn_modEq'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4135462a62ee33f2f225f440265f0bcc9f261b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
