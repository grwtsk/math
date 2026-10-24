# production_imports_no_tests

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e8dae9a-4eb7-a3f9-b98e-4d65549fff3e",
  "kind": "theorem",
  "lexical_name": "production_imports_no_tests",
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
  "slug": "production-imports-no-tests--ea92a84922d673b5830db999",
  "source": {
    "blob": "88217a3b5dc30e3564cba2f831e3fa2152aa4790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6f36296a48586f0f2e57443de660f0dfc7e3dcf77aabc3f7a1ab2c2704de1722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea92a84922d673b5830db99999bb2fd0f74786c222adaa975f6ebb416df0fcc0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant6f36296a48586f0f2e57443de660f0dfc7e3dcf77aabc3f7a1ab2c2704de1722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e8dae9a-4eb7-a3f9-b98e-4d65549fff3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem production_imports_no_tests
    {policy : OwnershipPolicy}
    {inventory : ProjectInventory}
    (h : policy.AcceptsInventory inventory) :
    Disjoint inventory.productionImports policy.testModules :=
  h.2.2.2.2.1

end OwnershipPolicy

/--
Typed metadata for one project.  The three fingerprints deliberately distinguish
the public Lean environment, implementation inputs, and optional runtime output.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant6f36296a48586f0f2e57443de660f0dfc7e3dcf77aabc3f7a1ab2c2704de1722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6f36296a48586f0f2e57443de660f0dfc7e3dcf77aabc3f7a1ab2c2704de1722.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88217a3b5dc30e3564cba2f831e3fa2152aa4790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
