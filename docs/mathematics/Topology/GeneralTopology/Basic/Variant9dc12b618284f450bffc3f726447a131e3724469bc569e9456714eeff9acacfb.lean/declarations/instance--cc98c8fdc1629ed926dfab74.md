# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:290ee394dd0687cc9dd4ec639d94c7290620231637f404ef895d0d1d495f3ea4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cc98c8fdc1629ed926dfab74",
  "source": {
    "blob": "819a1d713f60177fd85bfaf6eaafe779e78f3073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc98c8fdc1629ed926dfab74317497632ecdc5beb48561ba7fc34a4e8cfcfb46",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:290ee394dd0687cc9dd4ec639d94c7290620231637f404ef895d0d1d495f3ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : Stonean) : Projective X.compHaus where
  factors := by
    intro B C φ f _
    haveI : ExtremallyDisconnected X.compHaus.toTop := X.extrDisc
    have hf : f.1.Surjective
    · rwa [CompHaus.epi_iff_surjective] at *
    obtain ⟨f', h⟩ := CompactT2.ExtremallyDisconnected.projective φ.continuous f.continuous hf
    use ⟨f', h.left⟩
    ext
    exact congr_fun h.right _

end Stonean

namespace CompHaus

/-- If `X` is compact Hausdorff, `presentation X` is an extremally disconnected space
  equipped with an epimorphism down to `X`. It is a "constructive" witness to the
  fact that `CompHaus` has enough projectives.  -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `819a1d713f60177fd85bfaf6eaafe779e78f3073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
