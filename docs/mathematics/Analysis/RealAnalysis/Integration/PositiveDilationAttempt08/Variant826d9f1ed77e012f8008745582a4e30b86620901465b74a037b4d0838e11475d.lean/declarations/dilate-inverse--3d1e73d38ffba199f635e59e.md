# dilate_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4ea18c9-f4c8-0297-b008-8764e62036ee",
  "kind": "theorem",
  "lexical_name": "dilate_inverse",
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
  "slug": "dilate-inverse--3d1e73d38ffba199f635e59e",
  "source": {
    "blob": "6e6fc46e1088004d93a3b18b2aaf907e9edb426e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d1e73d38ffba199f635e59eb6750b2226530061bbe7fc3fc1551f66a459891a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4ea18c9-f4c8-0297-b008-8764e62036ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_inverse {a : ℝ} (ha : 0 < a) (f : PositiveL2) :
    dilate a⁻¹ (inv_pos.mpr ha) (dilate a ha f) = f := by
  have h := dilate_comp (inv_pos.mpr ha) ha f
  simpa only [inv_mul_cancel₀ ha.ne',dilate_one] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6fc46e1088004d93a3b18b2aaf907e9edb426e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
