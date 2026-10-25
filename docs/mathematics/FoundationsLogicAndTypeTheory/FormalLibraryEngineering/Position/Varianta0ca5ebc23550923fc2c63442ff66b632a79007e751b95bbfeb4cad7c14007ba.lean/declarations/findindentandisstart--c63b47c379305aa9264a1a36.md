# findIndentAndIsStart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c85710cd334e034e67e55996f595d43757f163b6753ca436b4465d203857ab",
  "kind": "def",
  "lexical_name": "findIndentAndIsStart",
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
  "slug": "findindentandisstart--c63b47c379305aa9264a1a36",
  "source": {
    "blob": "046cd1730703e2e93e698ef882caf8fc6387d44c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Varianta0ca5ebc23550923fc2c63442ff66b632a79007e751b95bbfeb4cad7c14007ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c63b47c379305aa9264a1a36b1a956665ed97c8ad54b145ce3855fdad41bd4b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Varianta0ca5ebc23550923fc2c63442ff66b632a79007e751b95bbfeb4cad7c14007ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c85710cd334e034e67e55996f595d43757f163b6753ca436b4465d203857ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findIndentAndIsStart (s : String) (pos : String.Pos.Raw) : Nat × Bool :=
  let start := findLineStart s pos
  let body := (s.pos! start).find (· ≠ ' ') |>.offset
  (start.byteDistance body, body == pos)

/--
If `pos` is a `Lean.Position`, then `pos.getDeclsAfter` returns the array of names of declarations
whose selection range begins in position at least `pos`. By using the `selectionRange`, which is
usually smaller than the `range`, we err on the side of including declarations when possible.

By default, this only inspects the local branch of the environment. This is compatible with being
used to find declarations from the current command in a linter, where we have already waited for
async tasks/parallel branches to complete. Further, since the environment exposed to linters does
not include constants added after the elaboration of the current command, it is safe to use this on
the command's start position without picking up later declarations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Varianta0ca5ebc23550923fc2c63442ff66b632a79007e751b95bbfeb4cad7c14007ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Varianta0ca5ebc23550923fc2c63442ff66b632a79007e751b95bbfeb4cad7c14007ba.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046cd1730703e2e93e698ef882caf8fc6387d44c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
