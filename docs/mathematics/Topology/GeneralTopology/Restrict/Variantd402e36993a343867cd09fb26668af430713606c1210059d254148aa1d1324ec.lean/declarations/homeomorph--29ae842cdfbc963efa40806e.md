# homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f145e9371cf757f236cadf2c088ed402cb6fb27b547f122cd84732693fd587e9",
  "kind": "def",
  "lexical_name": "homeomorph",
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
  "slug": "homeomorph--29ae842cdfbc963efa40806e",
  "source": {
    "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29ae842cdfbc963efa40806e28dc4f5185e9f201503bd2d75d1a80d06059f0ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f145e9371cf757f236cadf2c088ed402cb6fb27b547f122cd84732693fd587e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeomorph {R S A : Type*} [Semifield R] [Semifield S] [Ring A]
    [Algebra R S] [Algebra R A] [Algebra S A] [IsScalarTower R S A] [TopologicalSpace R]
    [TopologicalSpace S] [ContinuousSMul R S] {a : A} {f : C(S, R)} (h : SpectrumRestricts a f) :
    spectrum S a ≃ₜ spectrum R a where
  toFun := MapsTo.restrict f _ _ h.subset_preimage
  invFun := MapsTo.restrict (algebraMap R S) _ _ (image_subset_iff.mp h.algebraMap_image.subset)
  left_inv x := Subtype.ext <| h.rightInvOn x.2
  right_inv x := Subtype.ext <| h.left_inv x
  continuous_toFun := continuous_induced_rng.mpr <| f.continuous.comp continuous_induced_dom
  continuous_invFun := continuous_induced_rng.mpr <|
    continuous_algebraMap R S |>.comp continuous_induced_dom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c64f4e34fc652470fac9ca6b9e468838066640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
