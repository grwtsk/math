# primitiveWeilLaplace_autocorrelation_on_criticalLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:962ff427-55f6-7aab-eb46-a0218d52e4d1",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_autocorrelation_on_criticalLine",
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
  "slug": "primitiveweillaplace-autocorrelation-on-criticalline--eaffa2e9abc50ee560da56fc",
  "source": {
    "blob": "ab5aa734780717435e9ae40d09366b56e19e83a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaffa2e9abc50ee560da56fc443ba014976e4b7a1d458c2c296f6cf3beba0cfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:962ff427-55f6-7aab-eb46-a0218d52e4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeilLaplace_autocorrelation_on_criticalLine
    (g : PrimitiveWeilTestFunction) (s : ℂ)
    (hs : s.re = (1 / 2 : ℝ)) :
    primitiveWeilLaplace g.autocorrelation s =
      ((‖primitiveWeilLaplace g s‖ ^ 2 : ℝ) : ℂ) := by
  have hreflect : 1 - conj s = s := by
    apply Complex.ext
    · norm_num [hs]
    · simp
  rw [primitiveWeilLaplace_autocorrelation, hreflect, RCLike.mul_conj]
  norm_cast

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5aa734780717435e9ae40d09366b56e19e83a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
