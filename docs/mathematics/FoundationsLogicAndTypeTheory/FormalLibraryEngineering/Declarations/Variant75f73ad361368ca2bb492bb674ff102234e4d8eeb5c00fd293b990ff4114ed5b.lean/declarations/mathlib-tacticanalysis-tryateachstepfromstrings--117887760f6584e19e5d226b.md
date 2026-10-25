# Mathlib.TacticAnalysis.tryAtEachStepFromStrings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e5cde389659da81b704efcf3c39134956486d519ae83a793fdc81c030cefe3",
  "kind": "def",
  "lexical_name": "Mathlib.TacticAnalysis.tryAtEachStepFromStrings",
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
  "slug": "mathlib-tacticanalysis-tryateachstepfromstrings--117887760f6584e19e5d226b",
  "source": {
    "blob": "713f0aa2648dfc66b1982bdd9e5d8897bf8dc93a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 472,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:117887760f6584e19e5d226bc53f561eb20f04161de84a7f7a98b1a3782b0890",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e5cde389659da81b704efcf3c39134956486d519ae83a793fdc81c030cefe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Mathlib.TacticAnalysis.tryAtEachStepFromStrings
    (label : String) (tacticStr : String) : TacticAnalysis.Config where
  run seq := do
    -- Parse using `tacticSeq.fn` directly since `tacticSeq` is not a parser category.
    -- See https://leanprover.zulipchat.com/#narrow/channel/113488-general/topic/piggy.20back.20off.20of.20the.20lean4.20parser
    let tacSeq ← try
      ofExcept <|
        Mathlib.GuardExceptions.captureException (← getEnv) Parser.Tactic.tacticSeq.fn tacticStr
    catch _ =>
      -- Tactic not available (e.g., `aesop` before Aesop is imported) - skip silently
      return
    let tac : TSyntax `tactic := ⟨mkNode ``Lean.Parser.Tactic.tacticSeq1Indented #[tacSeq]⟩
    (tryAtEachStepCore (fun _ _ => pure tac) label).run seq

/-- Run a custom tactic at each proof step, configured via environment variables.

Reads from environment variables:
- `TRY_AT_EACH_STEP_TACTIC`: Tactic syntax to try (e.g., "grind +suggestions") - required
- `TRY_AT_EACH_STEP_LABEL`: Human-readable label for output (optional, defaults to tactic)

If `TRY_AT_EACH_STEP_TACTIC` is missing, this linter does nothing.

To enable, add to the `mathlibOnlyLinters` array in `lakefile.lean`:
```lean
⟨`linter.tacticAnalysis.tryAtEachStepFromEnv, true⟩,
```

Then run with the environment variable:
```bash
TRY_AT_EACH_STEP_TACTIC="grind +suggestions" lake build Mathlib
```

This generic entry point is used by the hammer-bench benchmarking tool
(https://github.com/leanprover-community/hammer-bench) to test arbitrary tactics
without requiring Mathlib code changes for each new tactic variant.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713f0aa2648dfc66b1982bdd9e5d8897bf8dc93a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
