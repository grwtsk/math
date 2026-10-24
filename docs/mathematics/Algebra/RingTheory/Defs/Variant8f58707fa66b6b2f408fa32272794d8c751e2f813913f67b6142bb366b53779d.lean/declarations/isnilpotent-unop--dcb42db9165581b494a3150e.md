# isNilpotent_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c794aaf6892988c7cde5e8cedcccb9c823d57b26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f58707fa66b6b2f408fa32272794d8c751e2f813913f67b6142bb366b53779d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2319703-96e2-db1e-595a-d03b9a6a7e8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47263606-0753-1a79-99bf-68831127ace7",
  "kind": "theorem",
  "lexical_name": "isNilpotent_unop",
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
  "slug": "isnilpotent-unop--dcb42db9165581b494a3150e",
  "source": {
    "blob": "c794aaf6892988c7cde5e8cedcccb9c823d57b26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/Algebra/RingTheory/Defs/Variant8f58707fa66b6b2f408fa32272794d8c751e2f813913f67b6142bb366b53779d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb42db9165581b494a3150e8106deaf486b0c342e0eaf2f258e30ad5f6b1287",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Defs/Variant8f58707fa66b6b2f408fa32272794d8c751e2f813913f67b6142bb366b53779d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47263606-0753-1a79-99bf-68831127ace7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_unop [MonoidWithZero R] {x : Rᵐᵒᵖ} :
    IsNilpotent (MulOpposite.unop x) ↔ IsNilpotent x :=
  isNilpotent_op.symm

alias ⟨_, IsNilpotent.unop⟩ := isNilpotent_unop

section NilpotencyClass

section ZeroPow

variable [Zero R] [Pow R ℕ]

variable (x) in
/-- If `x` is nilpotent, the nilpotency class is the smallest natural number `k` such that
`x ^ k = 0`. If `x` is not nilpotent, the nilpotency class takes the junk value `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Defs/Variant8f58707fa66b6b2f408fa32272794d8c751e2f813913f67b6142bb366b53779d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Defs/Variant8f58707fa66b6b2f408fa32272794d8c751e2f813913f67b6142bb366b53779d.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c794aaf6892988c7cde5e8cedcccb9c823d57b26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
