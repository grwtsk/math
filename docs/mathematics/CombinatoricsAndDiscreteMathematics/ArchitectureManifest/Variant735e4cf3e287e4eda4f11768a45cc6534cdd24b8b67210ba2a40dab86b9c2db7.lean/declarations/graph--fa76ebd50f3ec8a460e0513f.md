# graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61dffbc15cddfa4c2e1f9589e627c98e11e5d903cfad43369acb0e6057a98d94",
  "kind": "def",
  "lexical_name": "graph",
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
  "slug": "graph--fa76ebd50f3ec8a460e0513f",
  "source": {
    "blob": "904a0a0f2db2abd30358a3e02df64bc61b9eadbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa76ebd50f3ec8a460e0513fee4da6fc284f0655d79205c9990e1b05d02179a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61dffbc15cddfa4c2e1f9589e627c98e11e5d903cfad43369acb0e6057a98d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graph : DAF.DependencyGraph :=
  DAF.DependencyGraph.ofRank ProjectId directDependencies rank (by
    intro dependency project h
    cases project <;> cases dependency <;>
      simp_all [directDependencies, rank])

/--
Logical interface owner for each project.  When several fine-grained modules
intentionally publish declarations in one parent namespace (for example
`DAF.Comparison`), this value is the unique owning module name used by the
manifest, not a claim that Lean declarations were discovered by prefix scan.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904a0a0f2db2abd30358a3e02df64bc61b9eadbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
