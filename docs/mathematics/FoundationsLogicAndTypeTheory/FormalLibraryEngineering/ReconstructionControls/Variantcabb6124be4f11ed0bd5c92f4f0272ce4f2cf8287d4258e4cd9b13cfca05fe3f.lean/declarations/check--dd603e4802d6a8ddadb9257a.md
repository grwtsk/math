# check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e5fbd4c05a593739ae0d956fceaeea634f231f1f63d481aa28c8e1e678db92a",
  "kind": "def",
  "lexical_name": "check",
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
  "slug": "check--dd603e4802d6a8ddadb9257a",
  "source": {
    "blob": "c2ad5fbad5a393599335eb7902233629088bf807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionControls/Variantcabb6124be4f11ed0bd5c92f4f0272ce4f2cf8287d4258e4cd9b13cfca05fe3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd603e4802d6a8ddadb9257a82c8ab4e240e9c3b9828eafa5d4acf1e4aadc116",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionControls/Variantcabb6124be4f11ed0bd5c92f4f0272ce4f2cf8287d4258e4cd9b13cfca05fe3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e5fbd4c05a593739ae0d956fceaeea634f231f1f63d481aa28c8e1e678db92a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def check (label : String) (b : Bytes) (expected : Bool) : IO Unit := do
  match decode b with
  | none =>
    if expected then throw (IO.userError (label ++ ": unexpected rejection"))
    else IO.println (label ++ ": rejected (passed)")
  | some r =>
    if !expected then throw (IO.userError (label ++ ": unexpected acceptance"))
    else if bytes r == b then IO.println (label ++ ": accepted/reconstructed (passed)")
    else throw (IO.userError (label ++ ": reconstruction mismatch"))

#eval check "positive-operation" positive_operation true
#eval check "leading-zero-count" leading_zero_count false
#eval check "negative-zero" negative_zero false
#eval check "duplicate-key" duplicate_key false
#eval check "trailing-byte" trailing_byte false
#eval check "zero-denominator" zero_denominator false
end C2.ReconstructionChecks
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionControls/Variantcabb6124be4f11ed0bd5c92f4f0272ce4f2cf8287d4258e4cd9b13cfca05fe3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionControls/Variantcabb6124be4f11ed0bd5c92f4f0272ce4f2cf8287d4258e4cd9b13cfca05fe3f.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2ad5fbad5a393599335eb7902233629088bf807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
