# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0b17cbd59eec88bbaab6349f90fbfd6ca05fc5d0dc1ab0e36ffb645d9ff6082",
  "kind": "example",
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
  "slug": "example--bf104e6c6eb9cc14c610c431",
  "source": {
    "blob": "d5e566577fc2d6abbf99320ee9ef734d98bce66c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variant50231cf5396296b75521d7a372a8a575287fc6f1ce1b972d1dcd75f71a024c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf104e6c6eb9cc14c610c4311656e218fb3115987d1eceaa7f4da18da67ae959",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variant50231cf5396296b75521d7a372a8a575287fc6f1ce1b972d1dcd75f71a024c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0b17cbd59eec88bbaab6349f90fbfd6ca05fc5d0dc1ab0e36ffb645d9ff6082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (fun n => 2ⁿ⁺¹) 15 = 2¹⁶ := rfl

/--
info: aⁱ
---
info: a³⁷
---
info: a⁽¹ ⁺ ¹⁾
-/
#guard_msgs in
run_cmd do
  let a := Lean.mkIdent `a
  let i := Lean.mkIdent `i
  Lean.logInfo <| ← `(term| $a$i:superscript)
  let lit ← `(term| 37)
  Lean.logInfo <| ← `(term| $a$lit:superscript)
  let one_plus_one ← `(term| (1 + 1))
  Lean.logInfo <| ← `(term| $a$one_plus_one:superscript)

-- TODO: fix this
/--
error: Not a superscript: 'α'
---
info: aα
-/
#guard_msgs in
run_cmd Lean.Elab.Command.liftTermElabM do
  let a := Lean.mkIdent `a
  let α := Lean.mkIdent `α
  -- note: this only raises the error if we format non-lazily
  Lean.logInfo <| ← Lean.PrettyPrinter.ppTerm <| ← `(term| $a$α:superscript)

end

section
local macro:arg a:term:max b:subscript(term) : term => `($a $(⟨b.raw[0]⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variant50231cf5396296b75521d7a372a8a575287fc6f1ce1b972d1dcd75f71a024c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variant50231cf5396296b75521d7a372a8a575287fc6f1ce1b972d1dcd75f71a024c35.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e566577fc2d6abbf99320ee9ef734d98bce66c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
