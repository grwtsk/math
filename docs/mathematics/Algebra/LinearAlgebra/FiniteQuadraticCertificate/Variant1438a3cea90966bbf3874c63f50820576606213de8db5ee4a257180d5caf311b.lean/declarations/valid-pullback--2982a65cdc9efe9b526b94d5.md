# valid_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21f4897705c4c6d98068eadaa2db68eaa34e95cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64bd5b00-bc29-b0f5-134f-cdd9e1cda465",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1db0ce1c-a134-247a-bd3f-1cec1f3fba77",
  "kind": "theorem",
  "lexical_name": "valid_pullback",
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
  "slug": "valid-pullback--2982a65cdc9efe9b526b94d5",
  "source": {
    "blob": "21f4897705c4c6d98068eadaa2db68eaa34e95cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2982a65cdc9efe9b526b94d51d59d0f5889f694d9d4ba8857fe74a4b4a68dfde",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db0ce1c-a134-247a-bd3f-1cec1f3fba77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valid_pullback (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (hS : Valid P S) (T : Matrix ι κ R) :
    Valid (P.pullback T) (S.pullback T) := by
  refine ⟨hS.1, ?_⟩
  have h := congrArg (congruence T) hS.2
  simpa only [map_add, map_sum, map_smul, Problem.pullback, Certificate.pullback,
    congruence, LinearMap.coe_mk, AddHom.coe_mk, Matrix.transpose_mul, Matrix.mul_assoc] using h

omit [IsStrictOrderedRing R] in
/-- A passing finite checker transports through exact congruence; no claim
about continuum limits or source identification occurs in this implication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21f4897705c4c6d98068eadaa2db68eaa34e95cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
