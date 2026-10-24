# basisAux_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:922c55ce-5aa5-05bb-18e4-cbf2bc6e6d43",
  "kind": "theorem",
  "lexical_name": "basisAux_tmul",
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
  "slug": "basisaux-tmul--bc26b7852825a642bf11606f",
  "source": {
    "blob": "247aa29a6abf08130084e306273eba524a4261b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc26b7852825a642bf11606f5eff7bf5d55159033368b71a99fcf6f1338f16ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:922c55ce-5aa5-05bb-18e4-cbf2bc6e6d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basisAux_tmul (a : A) (m : M) :
    basisAux A b (a ⊗ₜ m) = a • Finsupp.mapRange (algebraMap R A) (map_zero _) (b.repr m) := by
  ext
  simp [basisAux, ← Algebra.commutes, Algebra.smul_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variantf4b3b66c6c09966a1fb8045de93f7f920274c64c33e4b5b54685306cee45850d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `247aa29a6abf08130084e306273eba524a4261b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
