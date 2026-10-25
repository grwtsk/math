# matchNestedTermResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aad0ccd524d2810384acdb2dc9157ad9c555570358783b4c63b3ae24fd707340",
  "kind": "def",
  "lexical_name": "matchNestedTermResult",
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
  "slug": "matchnestedtermresult--83cd16a9627fd2bb29dd3f48",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1261,
    "line": 1215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83cd16a9627fd2bb29dd3f48c7edfc06df4a2d8593b2079885e1cc77c6245774",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aad0ccd524d2810384acdb2dc9157ad9c555570358783b4c63b3ae24fd707340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1215–1261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchNestedTermResult (term : Syntax) (uvars : Array Var) (a r bc : Bool) : MacroM (List Syntax) := do
  let toDoElems (auxDo : Syntax) : List Syntax := getDoSeqElems (getDoSeq auxDo)
  let u ← mkTuple uvars
  match a, r, bc with
  | true, false, false =>
    if uvars.isEmpty then
      return toDoElems (← `(do $term:term))
    else
      return toDoElems (← `(do let r ← $term:term; $u:term := r.2; pure r.1))
  | false, true, false =>
    if uvars.isEmpty then
      return toDoElems (← `(do let r ← $term:term; return r))
    else
      return toDoElems (← `(do let r ← $term:term; $u:term := r.2; return r.1))
  | false, false, true => toDoElems <$>
    `(do let r ← $term:term;
         match r with
         | .break u => $u:term := u; break
         | .continue u => $u:term := u; continue)
  | true, true, false => toDoElems <$>
    `(do let r ← $term:term;
         match r with
         | .pure a u => $u:term := u; pure a
         | .return b u => $u:term := u; return b)
  | true, false, true => toDoElems <$>
    `(do let r ← $term:term;
         match r with
         | .pureReturn a u => $u:term := u; pure a
         | .break u => $u:term := u; break
         | .continue u => $u:term := u; continue)
  | false, true, true => toDoElems <$>
    `(do let r ← $term:term;
         match r with
         | .pureReturn a u => $u:term := u; return a
         | .break u => $u:term := u; break
         | .continue u => $u:term := u; continue)
  | true, true, true => toDoElems <$>
    `(do let r ← $term:term;
         match r with
         | .pure a u => $u:term := u; pure a
         | .return a u => $u:term := u; return a
         | .break u => $u:term := u; break
         | .continue u => $u:term := u; continue)
  | false, false, false => unreachable!

end ToTerm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L1215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
