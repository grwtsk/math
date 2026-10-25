# lucasU_succ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20a4d88c-a93e-fc11-6a77-5a4ad5c0701c",
  "kind": "theorem",
  "lexical_name": "lucasU_succ_succ",
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
  "slug": "lucasu-succ-succ--453b2c919af29ed9bbf3f6e2",
  "source": {
    "blob": "7693c5de31ddf81bd142821db98e75bad892d086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:453b2c919af29ed9bbf3f6e205ed03c6225264e928b4cb6657de1fc9ebd13592",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20a4d88c-a93e-fc11-6a77-5a4ad5c0701c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lucasU_succ_succ (P Q : Int) (n : Nat) :
    lucasU P Q (n + 2) = P * lucasU P Q (n + 1) - Q * lucasU P Q n := by
  simp only [lucasU, lucasUPair]

/-! ### Connection to Nat.fib (Fibonacci = Lucas U with P=1, Q=-1) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Defs/Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7693c5de31ddf81bd142821db98e75bad892d086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
