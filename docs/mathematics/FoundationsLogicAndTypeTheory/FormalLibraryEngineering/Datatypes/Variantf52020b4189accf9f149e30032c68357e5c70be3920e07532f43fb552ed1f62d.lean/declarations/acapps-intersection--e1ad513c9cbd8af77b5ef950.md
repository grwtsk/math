# ACApps.intersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e1aadb16d17a59f99df9d9dd3d8a31445a4521cd2759f3a1a314b69345085c2",
  "kind": "def",
  "lexical_name": "ACApps.intersection",
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
  "slug": "acapps-intersection--e1ad513c9cbd8af77b5ef950",
  "source": {
    "blob": "9d80194c381d065e18e86e2acde5a2a1bf6fdabb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ad513c9cbd8af77b5ef95053e0f8bff96beb5366d373da686c580be8a437d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e1aadb16d17a59f99df9d9dd3d8a31445a4521cd2759f3a1a314b69345085c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ACApps.intersection (e₁ e₂ : ACApps) (r : Array Expr := #[]) : Array Expr :=
  match e₁, e₂ with
  | .apps _ args₁, .apps _ args₂ => Id.run do
    let mut r := r
    let mut i₁ := 0
    let mut i₂ := 0
    while h : i₁ < args₁.size ∧ i₂ < args₂.size do
      if args₁[i₁] == args₂[i₂] then
        r := r.push args₁[i₁]
        i₁ := i₁ + 1
        i₂ := i₂ + 1
      else if Expr.lt args₂[i₂] args₁[i₁] then
        i₂ := i₂ + 1
      else
        i₁ := i₁ + 1
    return r
  | _, _ => r

/-- Sorts `args` and applies them to `ACApps.apps`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d80194c381d065e18e86e2acde5a2a1bf6fdabb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
