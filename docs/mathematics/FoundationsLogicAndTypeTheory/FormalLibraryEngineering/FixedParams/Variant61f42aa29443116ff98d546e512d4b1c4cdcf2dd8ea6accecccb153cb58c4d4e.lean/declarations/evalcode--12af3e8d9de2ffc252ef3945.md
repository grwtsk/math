# evalCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4123e295316f589f9734d3c1da82afb245f798fe8f172edb5400ceab54a0896b",
  "kind": "def",
  "lexical_name": "evalCode",
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
  "slug": "evalcode--12af3e8d9de2ffc252ef3945",
  "source": {
    "blob": "e00d47dafa935fa40f4784ed5d004169e17a0fbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant61f42aa29443116ff98d546e512d4b1c4cdcf2dd8ea6accecccb153cb58c4d4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12af3e8d9de2ffc252ef39450d722ec7679bab0041c545b995b01743ef13b432",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant61f42aa29443116ff98d546e512d4b1c4cdcf2dd8ea6accecccb153cb58c4d4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4123e295316f589f9734d3c1da82afb245f798fe8f172edb5400ceab54a0896b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalCode (code : Code .pure) : FixParamM Unit := do
  match code with
  | .let decl k => evalLetValue decl.value; evalCode k
  | .fun decl k _ =>
    if let some paramIdx ← isEquivalentFunDecl? decl then
      withReader (fun ctx =>
                    { ctx with assignment := ctx.assignment.insert decl.fvarId (.val paramIdx) })
        do evalCode k
    else
      evalCode decl.value
      evalCode k
  | .jp decl k => evalCode decl.value; evalCode k
  | .cases c => c.alts.forM fun alt => evalCode alt.getCode
  | .unreach .. | .jmp .. | .return .. => return ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant61f42aa29443116ff98d546e512d4b1c4cdcf2dd8ea6accecccb153cb58c4d4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant61f42aa29443116ff98d546e512d4b1c4cdcf2dd8ea6accecccb153cb58c4d4e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00d47dafa935fa40f4784ed5d004169e17a0fbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
