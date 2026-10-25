# Int64.shiftRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63f043d86c50df5123760b2b136d3654e638a4c65ac8b9e130d64580ae3ac610",
  "kind": "def",
  "lexical_name": "Int64.shiftRight",
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
  "slug": "int64-shiftright--96eed21f846bf1728300d963",
  "source": {
    "blob": "472c97c9ad377169d13f669003cf20e4a18a7913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1508,
    "line": 1498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96eed21f846bf1728300d96362afd3b997169ea33b9b9a9d166a809a0eb8a0d4",
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

Occurrence: `declaration:63f043d86c50df5123760b2b136d3654e638a4c65ac8b9e130d64580ae3ac610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1498–1508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Int64.shiftRight (a b : Int64) : Int64 := ⟨⟨BitVec.sshiftRight' a.toBitVec (b.toBitVec.smod 64)⟩⟩
/--
Bitwise complement, also known as bitwise negation, for 64-bit signed integers. Usually accessed via
the `~~~` prefix operator.

Each bit of the resulting integer is the opposite of the corresponding bit of the input integer.
Integers use the two's complement representation, so `Int64.complement a = -(a + 1)`.

This function is overridden at runtime with an efficient implementation.
-/
@[extern "lean_int64_complement"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4868b10bbef3740a4ddcaa5c8b7ccf18fd099bef301ddbc5ac8b1b8ce4e7b225.lean#L1498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472c97c9ad377169d13f669003cf20e4a18a7913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
