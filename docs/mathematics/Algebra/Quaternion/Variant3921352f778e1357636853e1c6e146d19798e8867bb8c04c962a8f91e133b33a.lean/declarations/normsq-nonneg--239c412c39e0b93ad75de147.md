# normSq_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53029f2-25ab-0f68-1f7c-cfa01475b106",
  "kind": "theorem",
  "lexical_name": "normSq_nonneg",
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
  "slug": "normsq-nonneg--239c412c39e0b93ad75de147",
  "source": {
    "blob": "6399085b68d33d3f4050d8629104d2ca0843438b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1287,
    "line": 1282,
    "path": "GRWTSK/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:239c412c39e0b93ad75de147a3966ed21c1d6039cb4bebd69abb1d4418b12404",
  "verification": {
    "reference": "docs/verification/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d53029f2-25ab-0f68-1f7c-cfa01475b106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1282–1287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_nonneg : 0 ≤ normSq a := by
  rw [normSq_def']
  apply_rules [sq_nonneg, add_nonneg]
#align quaternion.norm_sq_nonneg Quaternion.normSq_nonneg

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean#L1282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6399085b68d33d3f4050d8629104d2ca0843438b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
