# printNonDefaultScopeWarning

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:685d043887d6e8b470e70897a8ab486faa8140644c93274c5722e215dcb346f3",
  "kind": "def",
  "lexical_name": "printNonDefaultScopeWarning",
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
  "slug": "printnondefaultscopewarning--7119f4562a125e354e7fab13",
  "source": {
    "blob": "8bea03c0f4b358a94e3d355059ad7e0814254c00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7119f4562a125e354e7fab13caf4875b403474e8e4850a876f25527d7ec6769c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:685d043887d6e8b470e70897a8ab486faa8140644c93274c5722e215dcb346f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def printNonDefaultScopeWarning (repo : String) (triggerReason : String) : IO Unit := do
  let lines : List String := [
    "=================================================================",
    "SECURITY: reading cache at a non-default scope",
    "=================================================================",
    "You are reading cache artifacts at a scope outside the default trust",
    "boundary for this repo. The cache cannot verify the contents of these",
    "artifacts; you are choosing to trust whoever uploaded them.",
    "",
    s!"Repository: {repo}",
    s!"Reason: {triggerReason}",
    "=================================================================",
  ]
  for line in lines do
    IO.eprintln line

/--
Determine the reason why a non-default scope warning is being issued.

Returns a human-readable string describing which condition triggered the warning.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant4ac95b22b3083b5f80aa945be41d469ec9357bb2ce3834ba7c9867b869a8ec79.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bea03c0f4b358a94e3d355059ad7e0814254c00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
