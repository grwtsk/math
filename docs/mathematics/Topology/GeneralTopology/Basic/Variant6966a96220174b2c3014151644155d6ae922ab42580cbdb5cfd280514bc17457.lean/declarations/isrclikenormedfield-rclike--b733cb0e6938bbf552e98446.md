# IsRCLikeNormedField.rclike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95249fd2d20244e123fce02fe6b504aed718b40e6da967b743f7ecee5259a43d",
  "kind": "def",
  "lexical_name": "IsRCLikeNormedField.rclike",
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
  "slug": "isrclikenormedfield-rclike--b733cb0e6938bbf552e98446",
  "source": {
    "blob": "6d238c7aa6d8bd711e3b27b9b3d07ac93c2852a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1367,
    "line": 1355,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b733cb0e6938bbf552e9844604e024211e6e71539926f368c8ae24f7284adc8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95249fd2d20244e123fce02fe6b504aed718b40e6da967b743f7ecee5259a43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1355–1367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsRCLikeNormedField.rclike (𝕜 : Type*)
    [hk : NormedField 𝕜] [h : IsRCLikeNormedField 𝕜] : RCLike 𝕜 := by
  choose p hp using h.out
  exact p.copy_of_normedField hk hp

end

namespace LinearIsometryEquiv
variable {𝕜 V W G : Type*} [RCLike 𝕜] [SeminormedAddCommGroup V] [Module 𝕜 V]
  [SeminormedAddCommGroup W] [NormedSpace 𝕜 W] [SeminormedAddCommGroup G] [NormedSpace 𝕜 G]

/-- Left scalar multiplication of a unit with norm one and a linear isometric equivalence,
as a linear isometric equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean#L1355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d238c7aa6d8bd711e3b27b9b3d07ac93c2852a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
