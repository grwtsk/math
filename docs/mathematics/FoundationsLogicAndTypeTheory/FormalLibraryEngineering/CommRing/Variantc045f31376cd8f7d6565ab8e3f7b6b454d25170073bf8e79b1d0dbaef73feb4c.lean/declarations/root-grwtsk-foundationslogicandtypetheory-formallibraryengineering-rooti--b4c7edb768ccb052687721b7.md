# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.Int.Internal.Linear.Poly.isNonlinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7b7abdf30c1b226e4ada8916bf59a806be2fc5b1818c8d79cec6fd250a5a4c5",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.Int.Internal.Linear.Poly.isNonlinear",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rooti--b4c7edb768ccb052687721b7",
  "source": {
    "blob": "033d6477b2f93c3aa95de77faf640b53fa7a4e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variantc045f31376cd8f7d6565ab8e3f7b6b454d25170073bf8e79b1d0dbaef73feb4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4c7edb768ccb052687721b789de7afc70623e5f26cb07b1bf31088f1ef95835",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variantc045f31376cd8f7d6565ab8e3f7b6b454d25170073bf8e79b1d0dbaef73feb4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7b7abdf30c1b226e4ada8916bf59a806be2fc5b1818c8d79cec6fd250a5a4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.Int.Internal.Linear.Poly.isNonlinear (p : Poly) : GoalM Bool := do
  let .add _ x p := p | return false
  if (← getVar x).isAppOf ``HMul.hMul || (← getVar x).isAppOf ``HPow.hPow then return true
  p.isNonlinear

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variantc045f31376cd8f7d6565ab8e3f7b6b454d25170073bf8e79b1d0dbaef73feb4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variantc045f31376cd8f7d6565ab8e3f7b6b454d25170073bf8e79b1d0dbaef73feb4c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `033d6477b2f93c3aa95de77faf640b53fa7a4e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
