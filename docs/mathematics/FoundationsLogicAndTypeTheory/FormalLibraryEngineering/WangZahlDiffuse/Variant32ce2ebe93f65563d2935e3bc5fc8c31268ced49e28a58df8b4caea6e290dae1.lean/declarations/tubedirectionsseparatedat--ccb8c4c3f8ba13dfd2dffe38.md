# TubeDirectionsSeparatedAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af9001554fce6ad9e559b98edf4ab683d8bca9e32e500026299c8db533fca347",
  "kind": "def",
  "lexical_name": "TubeDirectionsSeparatedAt",
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
  "slug": "tubedirectionsseparatedat--ccb8c4c3f8ba13dfd2dffe38",
  "source": {
    "blob": "2311564da1f37cd06261e2a1d7c13093d3b53365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant32ce2ebe93f65563d2935e3bc5fc8c31268ced49e28a58df8b4caea6e290dae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccb8c4c3f8ba13dfd2dffe388cbf8b7006645e818d165e39dec718f3b471067d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant32ce2ebe93f65563d2935e3bc5fc8c31268ced49e28a58df8b4caea6e290dae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af9001554fce6ad9e559b98edf4ab683d8bca9e32e500026299c8db533fca347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TubeDirectionsSeparatedAt
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) (separation : ℝ) : Prop :=
  0 < separation ∧
    ∀ first ∈ family.tubes, ∀ second ∈ family.tubes, first ≠ second →
      separation ≤
        ‖(family.tube first).direction - (family.tube second).direction‖

/-- The geometric alternatives normally used to prevent duplicate tubes:
either quantitative direction separation, or the literal essential-
distinctness overlap inequality from the Wang--Zahl tube-family API. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant32ce2ebe93f65563d2935e3bc5fc8c31268ced49e28a58df8b4caea6e290dae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant32ce2ebe93f65563d2935e3bc5fc8c31268ced49e28a58df8b4caea6e290dae1.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2311564da1f37cd06261e2a1d7c13093d3b53365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
