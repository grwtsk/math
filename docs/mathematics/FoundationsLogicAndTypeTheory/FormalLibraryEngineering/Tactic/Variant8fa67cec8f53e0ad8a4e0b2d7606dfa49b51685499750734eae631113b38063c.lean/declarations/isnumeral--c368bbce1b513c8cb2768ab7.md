# isNumeral?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe3ab6eec747cfe0921ea265700503ab4ce8739b0568b6c8fe05d6952ea14448",
  "kind": "def",
  "lexical_name": "isNumeral?",
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
  "slug": "isnumeral--c368bbce1b513c8cb2768ab7",
  "source": {
    "blob": "ad68e7bbfab7b6c92494a38aecbbd5fe62522247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c368bbce1b513c8cb2768ab75d1155bb0fd863fcb030892032c60b82d22ece42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe3ab6eec747cfe0921ea265700503ab4ce8739b0568b6c8fe05d6952ea14448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isNumeral? (e : Expr) : Option (Expr × Nat) :=
  if e.isConstOf ``Nat.zero then
    (mkConst ``Nat, 0)
  else if let Expr.app (Expr.app (Expr.app (Expr.const ``OfNat.ofNat ..) α ..)
      (Expr.lit (Literal.natVal n) ..) ..) .. := e then
    some (α, n)
  else
    none

/--
This is the main heuristic used alongside the elim and move lemmas.
The goal is to help casts move past operators by adding intermediate casts.
An expression of the shape: op (↑(x : α) : γ) (↑(y : β) : γ)
is rewritten to:            op (↑(↑(x : α) : β) : γ) (↑(y : β) : γ)
when (↑(↑(x : α) : β) : γ) = (↑(x : α) : γ) can be proven with a squash lemma
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad68e7bbfab7b6c92494a38aecbbd5fe62522247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
