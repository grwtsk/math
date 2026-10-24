# thetaBoundaryDecayConstant_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e208dfc-2770-e026-4aa3-d28fc191f85d",
  "kind": "theorem",
  "lexical_name": "thetaBoundaryDecayConstant_nonnegative",
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
  "slug": "thetaboundarydecayconstant-nonnegative--06dbdd1cede189fe14c7b3fb",
  "source": {
    "blob": "638e99b8eec7abd7ff95b51125676c4b465db5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06dbdd1cede189fe14c7b3fb2cdb872bb6bf0f4b974ea04c64e7d5c60c48c1a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e208dfc-2770-e026-4aa3-d28fc191f85d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaBoundaryDecayConstant_nonnegative (u : ℂ) :
    0 ≤ thetaBoundaryDecayConstant u := by
  unfold thetaBoundaryDecayConstant
  exact add_nonneg thetaADerivDecayConstant_nonnegative
    (mul_nonneg (mul_nonneg (by norm_num) (norm_nonneg u)) thetaADecayConstant_nonnegative)

/-- After paying the possible spectral growth, the retained exponential
boundary still has a uniform `e^{-t}` majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638e99b8eec7abd7ff95b51125676c4b465db5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
