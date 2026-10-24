# IsAffineOpen.isQuasiSeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e98f9c9-fc42-a805-23ac-fda2d27f2049",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.isQuasiSeparated",
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
  "slug": "isaffineopen-isquasiseparated--3a4ee486d97a1cfba0200d62",
  "source": {
    "blob": "b22d6ea6839fc5035fa1658e6c61598d6504a906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a4ee486d97a1cfba0200d62ca3e0f2c47656b6843bf0cd32086f5ddfc251bfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e98f9c9-fc42-a805-23ac-fda2d27f2049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.isQuasiSeparated {X : Scheme} {U : Opens X.carrier} (hU : IsAffineOpen U) :
    IsQuasiSeparated (U : Set X.carrier) := by
  rw [isQuasiSeparated_iff_quasiSeparatedSpace]
  exacts [@AlgebraicGeometry.quasiSeparatedSpace_of_isAffine _ hU, U.isOpen]
#align algebraic_geometry.is_affine_open.is_quasi_separated AlgebraicGeometry.IsAffineOpen.isQuasiSeparated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22d6ea6839fc5035fa1658e6c61598d6504a906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
