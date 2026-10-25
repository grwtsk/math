# Int8.decLt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad355797b427e0c5e40ed387bff137e4adbf02fe5b2325910f8e293a8061c66b",
  "kind": "def",
  "lexical_name": "Int8.decLt",
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
  "slug": "int8-declt--e6a48fd9f8616a2d7a61e90d",
  "source": {
    "blob": "472c97c9ad377169d13f669003cf20e4a18a7913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 418,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6a48fd9f8616a2d7a61e90d8b4e6f825233ccb2d2a5ebf3f1dd7f1e9e4364af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad355797b427e0c5e40ed387bff137e4adbf02fe5b2325910f8e293a8061c66b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Int8.decLt (a b : Int8) : Decidable (a < b) :=
  inferInstanceAs (Decidable (a.toBitVec.slt b.toBitVec))

/--
Decides whether one 8-bit signed integer is less than or equal to another. Usually accessed via the
`DecidableLE Int8` instance.

This function is overridden at runtime with an efficient implementation.

Examples:
 * `(if ((-7) : Int8) ≤ 7 then "yes" else "no") = "yes"`
 * `(if (15 : Int8) ≤ 15 then "yes" else "no") = "yes"`
 * `(if (15 : Int8) ≤ 5 then "yes" else "no") = "no"`
 * `show (7 : Int8) ≤ 7 by decide`
-/
@[extern "lean_int8_dec_le", instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472c97c9ad377169d13f669003cf20e4a18a7913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
