# dvd_of_dvd_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09c4c8e33197047917b44a6b5223ced8339263e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13704adf1a994106748ee7f58c39ec9d9133e72ebb809a99f7d53baa27978ffd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85c49458-973b-3ddd-aa87-c15c28eb56d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f6f17f8-1c55-a2be-558b-7f17dc1c47d7",
  "kind": "theorem",
  "lexical_name": "dvd_of_dvd_pow",
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
  "slug": "dvd-of-dvd-pow--26a504fb0f3a8bd5aa9a1b2c",
  "source": {
    "blob": "09c4c8e33197047917b44a6b5223ced8339263e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/Algebra/Associated/Variant13704adf1a994106748ee7f58c39ec9d9133e72ebb809a99f7d53baa27978ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26a504fb0f3a8bd5aa9a1b2cfe6a5805f2740ff2008998b54fe9e6ded897ed19",
  "verification": {
    "reference": "docs/verification/Algebra/Associated/Variant13704adf1a994106748ee7f58c39ec9d9133e72ebb809a99f7d53baa27978ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6f17f8-1c55-a2be-558b-7f17dc1c47d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_of_dvd_pow (hp : Prime p) {a : α} {n : ℕ} (h : p ∣ a ^ n) : p ∣ a := by
  induction' n with n ih
  · rw [pow_zero] at h
    have := isUnit_of_dvd_one h
    have := not_unit hp
    contradiction
  rw [pow_succ] at h
  cases' dvd_or_dvd hp h with dvd_a dvd_pow
  · assumption
  exact ih dvd_pow
#align prime.dvd_of_dvd_pow Prime.dvd_of_dvd_pow

end Prime

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Associated/Variant13704adf1a994106748ee7f58c39ec9d9133e72ebb809a99f7d53baa27978ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Associated/Variant13704adf1a994106748ee7f58c39ec9d9133e72ebb809a99f7d53baa27978ffd.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c4c8e33197047917b44a6b5223ced8339263e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
