# abs_theta_sub_le_mul_of_checkThetaRelError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8d54a0e8b85bc17385d0f1a34e5c28de0bd437f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2775f14e-7ae7-2609-a2bf-728341211316",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e40556b-dbaa-63f0-8acf-4279f704266f",
  "kind": "theorem",
  "lexical_name": "abs_theta_sub_le_mul_of_checkThetaRelError",
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
  "slug": "abs-theta-sub-le-mul-of-checkthetarelerror--1128a35cf341ea46b3df09d2",
  "source": {
    "blob": "c8d54a0e8b85bc17385d0f1a34e5c28de0bd437f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 357,
    "path": "GRWTSK/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1128a35cf341ea46b3df09d24a8413812274e7937b0e9785342e3d635d365ee6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e40556b-dbaa-63f0-8acf-4279f704266f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_theta_sub_le_mul_of_checkThetaRelError (N depth : Nat) (bound : Rat)
    (h : checkThetaRelError N bound depth = true) :
    |theta (N : Real) - N| <= (bound : Real) * N := by
  unfold checkThetaRelError at h
  rw [Bool.and_eq_true] at h
  obtain ⟨h1, h2⟩ := h
  rw [decide_eq_true_eq] at h1 h2
  have hub := theta_le_thetaUB N depth
  have hlb := thetaLB_le_theta N depth
  rw [abs_le]
  constructor
  · -- -(bound * N) ≤ theta(N) - N, i.e. (1-bound)*N ≤ theta(N)
    have : ((1 - bound) * (N : Rat) : Rat) ≤ (thetaLB N depth : Rat) := h2
    have hcast : ((1 - bound) * (N : Rat) : Real) ≤ (thetaLB N depth : Real) := by
      exact_mod_cast this
    push_cast at hcast ⊢
    linarith
  · -- theta(N) - N ≤ bound * N, i.e. theta(N) ≤ (1+bound)*N
    have : (thetaUB N depth : Rat) ≤ (1 + bound) * (N : Rat) := h1
    have hcast : (thetaUB N depth : Real) ≤ ((1 + bound) * (N : Rat) : Real) := by
      exact_mod_cast this
    push_cast at hcast ⊢
    linarith

/-- Efficient O(N) incremental checker for `|theta(N) - N| <= bound * N`
for all `N = start..limit`.  The `start` parameter allows skipping small N
(e.g. start=3 for the range 2 < x ≤ 599). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d54a0e8b85bc17385d0f1a34e5c28de0bd437f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
