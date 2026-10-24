# rectangleDivisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08ceb361ff60fbe686b7ed7694107b557da58aeb3d047366b1a9d9a7a7ae0039",
  "kind": "def",
  "lexical_name": "rectangleDivisor",
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
  "slug": "rectangledivisor--4583ff6140a021ecc39b523c",
  "source": {
    "blob": "cd5a1b20583ecd828d3b79a7958deffcd25fab28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 24,
    "path": "GRWTSK/Analysis/MeromorphicOrder/Variant9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4583ff6140a021ecc39b523c3612b0df508da1a8d65d5b631445930a8edb3d14",
  "verification": {
    "reference": "docs/verification/Analysis/MeromorphicOrder/Variant9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08ceb361ff60fbe686b7ed7694107b557da58aeb3d047366b1a9d9a7a7ae0039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rectangleDivisor (f : ℂ → ℂ) (z w : ℂ) :
    Function.locallyFinsuppWithin (closedRectangle z w) ℤ :=
  MeromorphicOn.divisor f (closedRectangle z w)

/-- Pointwise divisor coefficients are totalized meromorphic orders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MeromorphicOrder/Variant9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeromorphicOrder/Variant9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5a1b20583ecd828d3b79a7958deffcd25fab28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
