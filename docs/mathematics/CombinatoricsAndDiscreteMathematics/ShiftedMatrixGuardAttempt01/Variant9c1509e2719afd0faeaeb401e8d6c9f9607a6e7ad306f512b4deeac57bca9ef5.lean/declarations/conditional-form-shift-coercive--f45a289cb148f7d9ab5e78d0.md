# conditional_form_shift_coercive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381b89e06a2783002e707278206e30629ff8c013",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb20df38-0bdb-5996-a785-1b0cd525cf91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7208e887-0d16-1a2b-3cf1-a92ec5123bf6",
  "kind": "theorem",
  "lexical_name": "conditional_form_shift_coercive",
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
  "slug": "conditional-form-shift-coercive--f45a289cb148f7d9ab5e78d0",
  "source": {
    "blob": "381b89e06a2783002e707278206e30629ff8c013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f45a289cb148f7d9ab5e78d0bd55d5aacb4bbc19e186fc5887d236fef5a807be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7208e887-0d16-1a2b-3cf1-a92ec5123bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_form_shift_coercive {V : Type*} (Q N : V → ℝ)
    {gamma lam : ℝ} (hbottom : ∀ v, gamma * N v ≤ Q v)
    (hlam : lam < gamma) (hnorm : ∀ v, 0 ≤ N v) (v : V) :
    (gamma - lam) * N v ≤ Q v - lam * N v ∧ 0 ≤ Q v - lam * N v := by
  have h := hbottom v
  have hprod := mul_nonneg (sub_nonneg.mpr hlam.le) (hnorm v)
  constructor <;> nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant9c1509e2719afd0faeaeb401e8d6c9f9607a6e7ad306f512b4deeac57bca9ef5.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381b89e06a2783002e707278206e30629ff8c013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
