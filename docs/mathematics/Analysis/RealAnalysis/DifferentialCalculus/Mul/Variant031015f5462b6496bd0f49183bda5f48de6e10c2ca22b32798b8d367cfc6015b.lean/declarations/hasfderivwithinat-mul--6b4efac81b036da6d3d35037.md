# HasFDerivWithinAt.mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e5b9c0-6891-87cf-c8f9-8b98cf12fdf8",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.mul'",
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
  "slug": "hasfderivwithinat-mul--6b4efac81b036da6d3d35037",
  "source": {
    "blob": "85508b43238d1779ea9fb3a83c4e1da9e3492be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b4efac81b036da6d3d3503733278c6ecaeb4ab938ad2bd461cd60f4dd1e5cfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e5b9c0-6891-87cf-c8f9-8b98cf12fdf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.mul' (ha : HasFDerivWithinAt a a' s x) (hb : HasFDerivWithinAt b b' s x) :
    HasFDerivWithinAt (fun y => a y * b y) (a x • b' + a'.smulRight (b x)) s x :=
  ((ContinuousLinearMap.mul 𝕜 𝔸).isBoundedBilinearMap.hasFDerivAt (a x, b x)).comp_hasFDerivWithinAt
    x (ha.prod hb)
#align has_fderiv_within_at.mul' HasFDerivWithinAt.mul'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85508b43238d1779ea9fb3a83c4e1da9e3492be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
