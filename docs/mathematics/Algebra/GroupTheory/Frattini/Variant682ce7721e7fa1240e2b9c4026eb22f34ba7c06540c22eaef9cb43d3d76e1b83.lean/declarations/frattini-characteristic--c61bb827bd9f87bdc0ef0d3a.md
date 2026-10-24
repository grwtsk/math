# frattini_characteristic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41bfaa2b5cfff237f35930b64a72f8584e3c13f416127b16a3c83a996a82299d",
  "kind": "instance",
  "lexical_name": "frattini_characteristic",
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
  "slug": "frattini-characteristic--c61bb827bd9f87bdc0ef0d3a",
  "source": {
    "blob": "9bd583cddadd09f869093c73ea6e1e9a1be8a396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c61bb827bd9f87bdc0ef0d3a46c47efc2c64e79f4b9fbaa9c17a330bfdae2fd5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41bfaa2b5cfff237f35930b64a72f8584e3c13f416127b16a3c83a996a82299d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance frattini_characteristic : (frattini G).Characteristic := by
  rw [characteristic_iff_comap_eq]
  intro φ
  apply φ.comapSubgroup.map_radical

/--
The Frattini subgroup consists of "non-generating" elements in the following sense:

If a subgroup together with the Frattini subgroup generates the whole group,
then the subgroup is already the whole group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd583cddadd09f869093c73ea6e1e9a1be8a396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
