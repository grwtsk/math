# no_right_zero_of_regularized_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:905dcb96-1224-38ee-4af3-f2736af6980a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f9ee703-6ed3-dc76-9c01-c032bcaf38a9",
  "kind": "theorem",
  "lexical_name": "no_right_zero_of_regularized_identity",
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
  "slug": "no-right-zero-of-regularized-identity--e5e6e7817e8f1287a6bb4d68",
  "source": {
    "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e6e7817e8f1287a6bb4d68e69bf056046c5a3a00f8d2c09056fa417bdfeda9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f9ee703-6ed3-dc76-9c01-c032bcaf38a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_right_zero_of_regularized_identity {L : ℂ → ℂ}
    (hidentity : RegularizedIdentity L) {s : ℂ}
    (hzero : riemannZeta s = 0) (hs1 : s ≠ 1) (hs : 1 / 2 < s.re) : False := by
  have hs0 := ne_zero_of_re_pos (show 0 < s.re by linarith)
  have hz : 0 < (s - 1 / 2).re := by norm_num; linarith
  have h := hidentity (s - 1 / 2) hz
  have harith : s - 1 / 2 + 1 / 2 = s := by ring
  rw [harith, regularizedZeta_eq hs0 hs1, hzero, mul_zero, mul_zero, zero_mul] at h
  apply hs1
  linear_combination -h

/-- The conclusion is Mathlib's literal RH proposition, retaining all exclusions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c190cd3df3c2d6e58624e68a5178eb0a69f1d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
