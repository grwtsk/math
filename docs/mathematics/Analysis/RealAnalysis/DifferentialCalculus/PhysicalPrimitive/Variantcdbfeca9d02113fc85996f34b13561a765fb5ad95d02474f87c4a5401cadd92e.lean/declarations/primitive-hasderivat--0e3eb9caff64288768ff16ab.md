# primitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7825d25d-5e32-943e-f89d-cb544e320c23",
  "kind": "theorem",
  "lexical_name": "primitive_hasDerivAt",
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
  "slug": "primitive-hasderivat--0e3eb9caff64288768ff16ab",
  "source": {
    "blob": "919f0695aad146f01e822a3688600557a37a309a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variantcdbfeca9d02113fc85996f34b13561a765fb5ad95d02474f87c4a5401cadd92e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e3eb9caff64288768ff16abed7dd8afa279f89c9d986c38fe4f39a070685511",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variantcdbfeca9d02113fc85996f34b13561a765fb5ad95d02474f87c4a5401cadd92e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7825d25d-5e32-943e-f89d-cb544e320c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_hasDerivAt {f0 f1 f2 f3 : ℝ → ℝ} {Z t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) :
    HasDerivAt (primitive f0 f1 f2 Z) (primitiveSlope f0 f1 f2 f3 Z t) t := by
  have he := (((hasDerivAt_id t).div_const (2 : ℝ)).exp.div_const Z)
  have hn := he.mul ((h2.sub h1).add (h0.div_const 4))
  convert hn using 1
  · rfl
  · dsimp [primitiveSlope]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variantcdbfeca9d02113fc85996f34b13561a765fb5ad95d02474f87c4a5401cadd92e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variantcdbfeca9d02113fc85996f34b13561a765fb5ad95d02474f87c4a5401cadd92e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `919f0695aad146f01e822a3688600557a37a309a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
