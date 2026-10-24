# recognition_of_exact_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:619245b7-e37d-d00d-4b43-a5ae0ade3b46",
  "kind": "theorem",
  "lexical_name": "recognition_of_exact_comparison",
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
  "slug": "recognition-of-exact-comparison--5d8be8e00ee4f001ed87cb10",
  "source": {
    "blob": "3948f8399a8eb5dfa87e510fc431c38416837a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8be8e00ee4f001ed87cb10ef1f2b29b916570cbd66f72a0f5ecb84abf5dc8a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:619245b7-e37d-d00d-4b43-a5ae0ade3b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recognition_of_exact_comparison {boundary source map factor : ℂ → ℂ}
    (hfactor : ∀ z, factor z ≠ 0)
    (hcompare : ∀ z, source z = factor z * boundary (map z))
    (hreflect : RealAxisReflection source map) : Recognition boundary source map :=
  ⟨exact_comparison_zero_transport hfactor hcompare, hreflect⟩

/-- Real affine coordinate changes preserve the necessary real-axis reflection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3948f8399a8eb5dfa87e510fc431c38416837a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
