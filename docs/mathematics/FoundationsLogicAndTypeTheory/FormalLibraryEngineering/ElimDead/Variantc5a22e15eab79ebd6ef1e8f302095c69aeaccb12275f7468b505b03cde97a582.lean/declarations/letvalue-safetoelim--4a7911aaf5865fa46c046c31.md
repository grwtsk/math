# LetValue.safeToElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94f24de6a5391ddc782ef07d006842ea5320651f79192c0021ddd867f2bc7659",
  "kind": "def",
  "lexical_name": "LetValue.safeToElim",
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
  "slug": "letvalue-safetoelim--4a7911aaf5865fa46c046c31",
  "source": {
    "blob": "e377594512dc75cc0e2eb1084fcbefce75dd0c49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a7911aaf5865fa46c046c31ea1442c3c8318e0f64e1eeda910c93b7f29968d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94f24de6a5391ddc782ef07d006842ea5320651f79192c0021ddd867f2bc7659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LetValue.safeToElim (val : LetValue pu) : Bool :=
  match pu with
  | .pure => true
  | .impure =>
    match val with
    | .ctor .. | .reset .. | .reuse .. | .oproj .. | .uproj .. | .sproj .. | .lit .. | .pap ..
    | .box .. | .unbox .. | .erased .. | .isShared .. => true
    -- 0-ary full applications are considered constants
    | .fap _ args => args.isEmpty
    | .fvar .. => false

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e377594512dc75cc0e2eb1084fcbefce75dd0c49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
