# lt_eq_false_of_le_k

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb2f3b0-4ac5-ebd9-52d7-ae8002d01f13",
  "kind": "theorem",
  "lexical_name": "lt_eq_false_of_le_k",
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
  "slug": "lt-eq-false-of-le-k--1eb79b2e2f5315552102c23c",
  "source": {
    "blob": "5bfb6febf3d3aa1a674e8009a53e69d0bf785279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 365,
    "path": "GRWTSK/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eb79b2e2f5315552102c23c5e86d166546bd715138b6070db48123f1d7410ee",
  "verification": {
    "reference": "docs/verification/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb2f3b0-4ac5-ebd9-52d7-ae8002d01f13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_eq_false_of_le_k {α} [LE α] [LT α] [Std.LawfulOrderLT α] [Std.IsPreorder α] [Ring α] [OrderedRing α]
    (a b : α) (k₁ k₂ : Int) : (k₂ + k₁).ble' 0 → a ≤ b + k₁ → (b < a + k₂) = False := by
  intro h₁; simp; intro h₂ h₃
  have h := le_lt_trans_k (k₂ + k₁) h₂ h₃
  simp at h
  apply lt_unsat_k h₁ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfb6febf3d3aa1a674e8009a53e69d0bf785279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
