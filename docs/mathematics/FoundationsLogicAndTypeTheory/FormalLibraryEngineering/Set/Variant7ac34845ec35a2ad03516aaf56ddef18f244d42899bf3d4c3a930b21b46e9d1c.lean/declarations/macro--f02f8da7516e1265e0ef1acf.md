# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54592091f92137cb92df34050f602c98191fcd3d2cb5de072c68cfd1dbe9d08a",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--f02f8da7516e1265e0ef1acf",
  "source": {
    "blob": "c86bca2378eefdae8f630fc27c482fc149e66267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f02f8da7516e1265e0ef1acf8ca937a66cba85058af8483e8ee651b9a5aa1f2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54592091f92137cb92df34050f602c98191fcd3d2cb5de072c68cfd1dbe9d08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
macro "set!" rest:setArgsRest : tactic => `(tactic| set ! $rest:setArgsRest)

/--
`set a := t with h` is a variant of `let a := t`. It adds the hypothesis `h : a = t` to
the local context and replaces `t` with `a` everywhere it can.

`set a := t with ← h` will add `h : t = a` instead.

`set! a := t with h` does not do any replacing.

```lean
example (x : Nat) (h : x + x - x = 3) : x + x - x = 3 := by
  set y := x with ← h2
  sorry
/-
x : Nat
y : Nat := x
h : y + y - y = 3
h2 : x = y
⊢ y + y - y = 3
-/
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7ac34845ec35a2ad03516aaf56ddef18f244d42899bf3d4c3a930b21b46e9d1c.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86bca2378eefdae8f630fc27c482fc149e66267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
