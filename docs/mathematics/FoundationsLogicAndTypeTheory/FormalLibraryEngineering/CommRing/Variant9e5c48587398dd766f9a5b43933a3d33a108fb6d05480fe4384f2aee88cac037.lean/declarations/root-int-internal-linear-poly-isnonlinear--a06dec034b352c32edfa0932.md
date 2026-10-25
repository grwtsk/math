# _root_.Int.Internal.Linear.Poly.isNonlinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c718f32bbd5984c7c190c479f035d2b33b2921772556247c0bb8298364fd6b27",
  "kind": "def",
  "lexical_name": "_root_.Int.Internal.Linear.Poly.isNonlinear",
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
  "slug": "root-int-internal-linear-poly-isnonlinear--a06dec034b352c32edfa0932",
  "source": {
    "blob": "7831a0fe57c866f00796ca144e5e0c1b15c60b45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a06dec034b352c32edfa0932958988bef4f89d0e1a4d3df2c46f9ea24a7107be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c718f32bbd5984c7c190c479f035d2b33b2921772556247c0bb8298364fd6b27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Int.Internal.Linear.Poly.isNonlinear (p : Poly) : GoalM Bool := do
  let .add _ x p := p | return false
  if (← getVar x).isAppOf ``HMul.hMul || (← getVar x).isAppOf ``HPow.hPow then return true
  p.isNonlinear

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7831a0fe57c866f00796ca144e5e0c1b15c60b45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
