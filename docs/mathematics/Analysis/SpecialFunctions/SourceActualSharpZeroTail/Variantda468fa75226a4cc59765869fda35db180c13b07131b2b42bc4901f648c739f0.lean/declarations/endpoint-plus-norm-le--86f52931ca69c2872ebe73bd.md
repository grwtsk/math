# endpoint_plus_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fdc37b1-f3fe-5cff-10b2-48d2c55ff646",
  "kind": "theorem",
  "lexical_name": "endpoint_plus_norm_le",
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
  "slug": "endpoint-plus-norm-le--86f52931ca69c2872ebe73bd",
  "source": {
    "blob": "1097e0ea8183e5937874c7161cede798d52dbf19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86f52931ca69c2872ebe73bd2087a04417bdf877ab624cdf89f8952a8b12c3a4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fdc37b1-f3fe-5cff-10b2-48d2c55ff646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_plus_norm_le (z : ℂ) :
    ‖z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105‖ ≤
      ‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105 := by
  have h1 := norm_add_le (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z) (105 : ℂ)
  have h2 := norm_add_le (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 + 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_add_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num at h1 h2 h3 h4
  linarith

/-- Both reflected exponential endpoints and every polynomial jet stay in the estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantda468fa75226a4cc59765869fda35db180c13b07131b2b42bc4901f648c739f0.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1097e0ea8183e5937874c7161cede798d52dbf19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
