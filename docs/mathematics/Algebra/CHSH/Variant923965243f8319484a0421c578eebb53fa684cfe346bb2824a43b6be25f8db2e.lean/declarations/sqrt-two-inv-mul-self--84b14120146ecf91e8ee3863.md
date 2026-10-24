# sqrt_two_inv_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1fbf32de808c91d326a2c9d09cd2050a9126ad8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faaeae78-d333-5487-bc38-7274170d36a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99f50f98-ea21-1fb0-3833-f7fbae9c584e",
  "kind": "theorem",
  "lexical_name": "sqrt_two_inv_mul_self",
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
  "slug": "sqrt-two-inv-mul-self--84b14120146ecf91e8ee3863",
  "source": {
    "blob": "b1fbf32de808c91d326a2c9d09cd2050a9126ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 147,
    "path": "GRWTSK/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84b14120146ecf91e8ee3863df8750efad9967050f28190d6e95c04dbb2303d4",
  "verification": {
    "reference": "docs/verification/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f50f98-ea21-1fb0-3833-f7fbae9c584e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_two_inv_mul_self : (√2)⁻¹ * (√2)⁻¹ = (2⁻¹ : ℝ) := by
  rw [← mul_inv]
  simp

end TsirelsonInequality

open TsirelsonInequality

/-- In a noncommutative ordered \*-algebra over ℝ,
Tsirelson's bound for a CHSH tuple (A₀, A₁, B₀, B₁) is
`A₀ * B₀ + A₀ * B₁ + A₁ * B₀ - A₁ * B₁ ≤ 2^(3/2) • 1`.

We prove this by providing an explicit sum-of-squares decomposition
of the difference.

(We could work over `ℤ[2^(1/2), 2^(-1/2)]` if we really wanted to!)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1fbf32de808c91d326a2c9d09cd2050a9126ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
