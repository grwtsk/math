# processHypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:121d00cb9f71efbe89b1c927ed64c067e89407cb133a0a41482aa45fd2b23642",
  "kind": "def",
  "lexical_name": "processHypotheses",
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
  "slug": "processhypotheses--808432e8f186c9776db1072e",
  "source": {
    "blob": "cb306f2ada9110944a97d6d731f38b9f77e49c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:808432e8f186c9776db1072e0952e8dd0259c5e77b081ddc0b8f807e51b972f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:121d00cb9f71efbe89b1c927ed64c067e89407cb133a0a41482aa45fd2b23642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def processHypotheses (goal : Grind.Goal) : VCGenM Grind.Goal := do
  if (← read).internalize then Grind.processHypotheses goal else return goal

/--
Introduce all leading binders of `goal` in one pass, naming the `i`-th binder `overrides[i]` when
given and the binder's own name otherwise. Accessibility is decided by `tactic.hygienic` via
`mkFreshBinderNameForTactic`. The introduction itself is a single `Sym.intros` call (which keeps
the memoized, sharing-correct intro); only the names are chosen here. Returns the goal unchanged
when there are no leading binders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb306f2ada9110944a97d6d731f38b9f77e49c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
