# ACApps.isSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:389d0c9b770dbee497bd84cc9213d8290032a2f70e9c4fc316c690ded9cd5668",
  "kind": "def",
  "lexical_name": "ACApps.isSubset",
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
  "slug": "acapps-issubset--ee59179e9f49e62b064f03d3",
  "source": {
    "blob": "9d80194c381d065e18e86e2acde5a2a1bf6fdabb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee59179e9f49e62b064f03d3afb8e55772caaac66e27a5104554828fc59a1c36",
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

Occurrence: `declaration:389d0c9b770dbee497bd84cc9213d8290032a2f70e9c4fc316c690ded9cd5668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ACApps.isSubset : (e₁ e₂ : ACApps) → Bool
  | .ofExpr a, .ofExpr b => a == b
  | .ofExpr a, .apps _ args => args.contains a
  | .apps _ _, .ofExpr _ => false
  | .apps op₁ args₁, .apps op₂ args₂ =>
    if op₁ == op₂ then
      if args₁.size ≤ args₂.size then Id.run do
        let mut i₁ := 0
        let mut i₂ := 0
        while h : i₁ < args₁.size ∧ i₂ < args₂.size do
          if args₁[i₁] == args₂[i₂] then
            i₁ := i₁ + 1
            i₂ := i₂ + 1
          else if Expr.lt args₂[i₂] args₁[i₁] then
            i₂ := i₂ + 1
          else return false
        return i₁ == args₁.size
      else false
    else false

/-- Appends elements of the set difference `e₁ \ e₂` to `r`.
Example: given `e₁ := a*a*a*a*b*b*c*d*d*d` and `e₂ := a*a*a*b*b*d`,
the result is `#[a, c, d, d]`

Precondition: `e₂.isSubset e₁` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantf52020b4189accf9f149e30032c68357e5c70be3920e07532f43fb552ed1f62d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d80194c381d065e18e86e2acde5a2a1bf6fdabb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
