# HasRiemannIntegral.iff_hasIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6de0dc9-fd68-2c0f-ce08-8d8786b14a62",
  "kind": "theorem",
  "lexical_name": "HasRiemannIntegral.iff_hasIntegral",
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
  "slug": "hasriemannintegral-iff-hasintegral--4bf028333f26819d809b11ab",
  "source": {
    "blob": "4cb5cefcb7f1b4fb936a1b6e367d49d783cc80ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 416,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf028333f26819d809b11ab98889f00e71c04e90671f12af424f19988cd5f06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6de0dc9-fd68-2c0f-ce08-8d8786b14a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasRiemannIntegral.iff_hasIntegral (hab : a < b) : HasRiemannIntegral a b f L ↔
    HasIntegral (interval hab) IntegrationParams.Riemann (f <| · 0) BoxAdditiveMap.volume L := by
  simp [HasRiemannIntegral, hab, HasStieltjesIntegral.of_lt, HasStieltjesIntegralOrdered,
    BoxAdditiveMap.increment_lsmul_eq_volume]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb5cefcb7f1b4fb936a1b6e367d49d783cc80ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
