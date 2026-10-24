# gitLogWalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71883a359081be1a708e1ba3dcb3d6bc3ef8dbcb105aa31d05e337697ce61c37",
  "kind": "def",
  "lexical_name": "gitLogWalk",
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
  "slug": "gitlogwalk--afffb28d48d39034ceb7481a",
  "source": {
    "blob": "23a6814ac3a815e93ff32ec960463019b36671e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant24fa8d396e13d9bd65a09f309656c9509096dd44e6bab974a94a7c95d2edcfe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afffb28d48d39034ceb7481a1a9246ba86ce44ad85a286da7abe2180f6972a98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant24fa8d396e13d9bd65a09f309656c9509096dd44e6bab974a94a7c95d2edcfe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71883a359081be1a708e1ba3dcb3d6bc3ef8dbcb105aa31d05e337697ce61c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gitLogWalk (startRef stopRef : String) (cap : Nat) (cwd : FilePath := ".") :
    IO (List String) := do
  -- Construct git log command: walk from startRef to stopRef (if provided) using first-parent.
  -- First-parent follows the main branch across merges, which is the intended behavior.
  let args := if stopRef.isEmpty then
    #["log", startRef, "--first-parent", "--pretty=format:%H", s!"--max-count={cap}"]
  else
    #["log", s!"{startRef}...{stopRef}", "--first-parent", "--pretty=format:%H", s!"--max-count={cap}"]
  let out ← IO.Process.output {cmd := "git", args := args, cwd := cwd}
  unless out.exitCode == 0 do
    throw <| IO.userError
      s!"git log failed (exit code {out.exitCode}):\n{out.stderr.trimAscii}"
  let shas := out.stdout.trimAscii.toString.splitOn "\n" |>.filter (· ≠ "")
  pure shas

/--
Determine the merge base between `HEAD` and a target ref (typically `master`).
Falls back to a cap-only walk if the ref is not reachable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant24fa8d396e13d9bd65a09f309656c9509096dd44e6bab974a94a7c95d2edcfe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant24fa8d396e13d9bd65a09f309656c9509096dd44e6bab974a94a7c95d2edcfe2.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a6814ac3a815e93ff32ec960463019b36671e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
