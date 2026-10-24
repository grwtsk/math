# conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bb88f414033951de4b618235efb44d2db8e7c7926e3256398bd129a0eda7a18",
  "kind": "def",
  "lexical_name": "conductor",
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
  "slug": "conductor--a5592a6b02ec0e869e39873a",
  "source": {
    "blob": "7b4a5a2bc169271918ea64d64998dffcff659417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5592a6b02ec0e869e39873a70db8f79919b0c29d88364a1711eaf9443a6ca21",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bb88f414033951de4b618235efb44d2db8e7c7926e3256398bd129a0eda7a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conductor (x : S) : Ideal S where
  carrier := {a | ∀ b : S, a * b ∈ R<x>}
  zero_mem' b := by simpa only [zero_mul] using Subalgebra.zero_mem _
  add_mem' ha hb c := by simpa only [add_mul] using Subalgebra.add_mem _ (ha c) (hb c)
  smul_mem' c a ha b := by simpa only [smul_eq_mul, mul_left_comm, mul_assoc] using ha (c * b)
#align conductor conductor

variable {R} {x : S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4a5a2bc169271918ea64d64998dffcff659417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
