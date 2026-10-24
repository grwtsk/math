# decidableMemPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d09b9b07a092fa9cb1c1654a90b6c317649c9843d6817629380577d44866db4",
  "kind": "instance",
  "lexical_name": "decidableMemPow",
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
  "slug": "decidablemempow--afad3db671ed6435f1c85260",
  "source": {
    "blob": "e5448e95b3248be252732f28e3c5f3da5dab907f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afad3db671ed6435f1c85260a81a1ecc71b3d0b78cb79cadb346e3f88244ea68",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d09b9b07a092fa9cb1c1654a90b6c317649c9843d6817629380577d44866db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableMemPow [Fintype α] [DecidableEq α] [DecidablePred (· ∈ s)] (n : ℕ) :
    DecidablePred (· ∈ s ^ n) := by
  induction' n with n ih
  · simp only [pow_zero, mem_one]
    infer_instance
  · letI := ih
    rw [pow_succ]
    infer_instance

end Monoid

section SMul

variable [SMul α β] {s : Set α} {t : Set β}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5448e95b3248be252732f28e3c5f3da5dab907f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
