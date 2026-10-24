# parseEnvFlag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd84a338827f0eea9028fa78e8481bb4483a00e2d106b3123a1ef892bfd20e6e",
  "kind": "def",
  "lexical_name": "parseEnvFlag",
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
  "slug": "parseenvflag--7bdaaad3780f4c539fc8fe51",
  "source": {
    "blob": "718a8be52ce33ea31f4f7394fc702853c7501306",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/Env/Variant78aaf98ba4489beb4cd29d714074eb7b2cddb6e7045f43c8cfcf7a98e2640f90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bdaaad3780f4c539fc8fe5155210ddbfd6b705e6eeb29c1120d2b364d0060f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Env/Variant78aaf98ba4489beb4cd29d714074eb7b2cddb6e7045f43c8cfcf7a98e2640f90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd84a338827f0eea9028fa78e8481bb4483a00e2d106b3123a1ef892bfd20e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseEnvFlag (name : String) (value? : Option String) (ifUnset : Bool) : IO Bool := do
  let some value := nonEmptyEnvValue value? | return ifUnset
  match value.toLower with
  | "1" | "true" => return true
  | "0" | "false" => return false
  | _ =>
    IO.eprintln s!"Warning: ignoring {name}={value} (expected 1, true, 0 or false)."
    return ifUnset

/-- Value of the boolean environment variable `name`, read from the environment
and parsed by `parseEnvFlag`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Env/Variant78aaf98ba4489beb4cd29d714074eb7b2cddb6e7045f43c8cfcf7a98e2640f90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Env/Variant78aaf98ba4489beb4cd29d714074eb7b2cddb6e7045f43c8cfcf7a98e2640f90.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `718a8be52ce33ea31f4f7394fc702853c7501306` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
