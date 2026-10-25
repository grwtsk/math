# testInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3caba541258cf7325d20be30fa59ee210c596664e853d56cab49a2a6f8c1ef5",
  "kind": "def",
  "lexical_name": "testInterval",
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
  "slug": "testinterval--9d72f72baa40a385a5f4a4d6",
  "source": {
    "blob": "c2231eff25b733fff1d8b4648c8fe5497aef4ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d72f72baa40a385a5f4a4d6ba80c4f113d504e667616202704584d771463acd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3caba541258cf7325d20be30fa59ee210c596664e853d56cab49a2a6f8c1ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testInterval : IntervalRat := ⟨1/1000, 999/1000, by norm_num⟩

-- Test: Dyadic integration with small partition count
set_option profiler true in
#eval do
  let result := integratePartitionDyadic g_alt_expr testInterval 100 (by norm_num)
  IO.println s!"Dyadic (100 parts): [{result.lo}, {result.hi}]"
  IO.println s!"  width: {result.hi - result.lo}"

-- Test: Rational integration with small partition count (for comparison)
set_option profiler true in
#eval do
  match integratePartitionWithInv g_alt_expr testInterval 100 with
  | some result => IO.println s!"Rational (100 parts): [{result.lo}, {result.hi}]"
  | none => IO.println "Rational: failed"

-- Test: Dyadic with 3000 partitions (the Li2 count)
set_option profiler true in
#eval do
  let result := integratePartitionDyadic g_alt_expr testInterval 3000 (by norm_num)
  IO.println s!"Dyadic (3000 parts): [{result.lo}, {result.hi}]"
  IO.println s!"  width: {result.hi - result.lo}"

-- Test: The actual checker with default precision (-53)
set_option profiler true in
#eval checkIntegralLowerBoundDyadic g_alt_expr testInterval 3000 (103775/100000)

-- Test: Higher precision configs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Varianta1c5125b768436b212021384dd01485d857b1b0b627df7fddde0c64c83c19496.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2231eff25b733fff1d8b4648c8fe5497aef4ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
