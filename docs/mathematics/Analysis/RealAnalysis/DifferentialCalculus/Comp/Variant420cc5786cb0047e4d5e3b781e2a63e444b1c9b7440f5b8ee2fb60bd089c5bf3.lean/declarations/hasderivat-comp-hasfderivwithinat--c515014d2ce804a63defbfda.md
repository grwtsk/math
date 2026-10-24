# HasDerivAt.comp_hasFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd8bf308-04d5-18fe-a1b5-2b929c290a0d",
  "kind": "theorem",
  "lexical_name": "HasDerivAt.comp_hasFDerivWithinAt",
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
  "slug": "hasderivat-comp-hasfderivwithinat--c515014d2ce804a63defbfda",
  "source": {
    "blob": "28f045223838b9630755d3acdd7d0f92839d9ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c515014d2ce804a63defbfda35fc59b4979fafecf15b8b11028e5f856e3d7637",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8bf308-04d5-18fe-a1b5-2b929c290a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasDerivAt.comp_hasFDerivWithinAt {f : E → 𝕜'} {f' : E →L[𝕜] 𝕜'} {s} (x)
    (hh : HasDerivAt h₂ h₂' (f x)) (hf : HasFDerivWithinAt f f' s x) :
    HasFDerivWithinAt (h₂ ∘ f) (h₂' • f') s x :=
  hh.comp_hasFDerivAtFilter hf <| hf.continuousWithinAt.tendsto.prodMap <| tendsto_pure_pure _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f045223838b9630755d3acdd7d0f92839d9ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
