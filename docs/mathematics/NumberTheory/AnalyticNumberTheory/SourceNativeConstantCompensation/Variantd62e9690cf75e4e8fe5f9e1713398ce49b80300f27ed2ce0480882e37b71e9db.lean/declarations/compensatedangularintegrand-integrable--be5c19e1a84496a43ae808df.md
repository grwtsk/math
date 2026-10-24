# compensatedAngularIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ec9c080afd7b3f101ca9361c3d57feee3d62e7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fed587e2-30e0-0a20-69c8-fa73ffd1c0b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5397b352-6210-19ae-c38f-4a3598e7c582",
  "kind": "theorem",
  "lexical_name": "compensatedAngularIntegrand_integrable",
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
  "slug": "compensatedangularintegrand-integrable--be5c19e1a84496a43ae808df",
  "source": {
    "blob": "4ec9c080afd7b3f101ca9361c3d57feee3d62e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be5c19e1a84496a43ae808dfdfa665febad5f1992d8c1fe2d19c999e58a6cdbf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5397b352-6210-19ae-c38f-4a3598e7c582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedAngularIntegrand_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (compensatedAngularIntegrand A) := by
  rw [compensated_integrand_eq]
  exact (angularIntegrand_integrable A hA).sub
    ((nativeMellin_two_integrable A hA).const_mul (rightLineMajorant 2 : ℂ))

/-- Constant compensation has the exact arithmetic return D_2 plus its signed whole line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeConstantCompensation/Variantd62e9690cf75e4e8fe5f9e1713398ce49b80300f27ed2ce0480882e37b71e9db.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec9c080afd7b3f101ca9361c3d57feee3d62e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
