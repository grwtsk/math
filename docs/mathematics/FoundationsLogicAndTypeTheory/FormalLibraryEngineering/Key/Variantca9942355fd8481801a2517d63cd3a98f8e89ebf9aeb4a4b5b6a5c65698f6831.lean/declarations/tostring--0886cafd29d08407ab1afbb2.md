# toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:903b50beb743703fec10487f1251a1adcc5384fe840cf968e05b65762aec687d",
  "kind": "def",
  "lexical_name": "toString",
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
  "slug": "tostring--0886cafd29d08407ab1afbb2",
  "source": {
    "blob": "92fcd3638c152ba981d6d780615470d5baec7527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantca9942355fd8481801a2517d63cd3a98f8e89ebf9aeb4a4b5b6a5c65698f6831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0886cafd29d08407ab1afbb2fb1522f216cb26b869cb0ce73e9021f548f324ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantca9942355fd8481801a2517d63cd3a98f8e89ebf9aeb4a4b5b6a5c65698f6831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:903b50beb743703fec10487f1251a1adcc5384fe840cf968e05b65762aec687d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def toString : (self : PartialBuildKey) → String
| .module m => s!"+{m}"
| .package p => match (getPkgName p) with | .anonymous => "" | p => s!"@{p}"
| .packageModule p m => match (getPkgName p) with | .anonymous => s!"+{m}" | p => s!"{p}/+{m}"
| .packageTarget p t => match (getPkgName p) with | .anonymous => t.toString | p => s!"{p}/{t}"
| .facet t f => if f.isAnonymous then toString t else s!"{toString t}:{f}"
where
  /-- Utility for extracting a package's base name from its key name. -/
  getPkgName (p : Name) : Name :=
    match p with
    | .anonymous | .num .anonymous _ => .anonymous
    | .num p _ | p => p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantca9942355fd8481801a2517d63cd3a98f8e89ebf9aeb4a4b5b6a5c65698f6831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantca9942355fd8481801a2517d63cd3a98f8e89ebf9aeb4a4b5b6a5c65698f6831.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fcd3638c152ba981d6d780615470d5baec7527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
