# integralCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6b4abc34f1c4fa0cad0af85b1e6d7bd2223118c85e7363139bbf7cd38d20ad5",
  "kind": "def",
  "lexical_name": "integralCLM",
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
  "slug": "integralclm--67d1f346b7dff2739fc1aeb4",
  "source": {
    "blob": "983362255ba0f61e8e71fa655f81c2cf5c5a0d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 533,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67d1f346b7dff2739fc1aeb4e6b1e87694ca94714b0ddcef10de1b085c9a0896",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6b4abc34f1c4fa0cad0af85b1e6d7bd2223118c85e7363139bbf7cd38d20ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integralCLM : (α →₁[μ] E) →L[ℝ] E :=
  integralCLM' ℝ

/-- The Bochner integral in L1 space -/
irreducible_def integral : (α →₁[μ] E) → E :=
  integralCLM

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983362255ba0f61e8e71fa655f81c2cf5c5a0d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
