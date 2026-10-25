# Mathlib.TacticAnalysis.tryAtEachStepFromStrings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3c51f177bf1d93e9b3b0b37a7cb08310009557e28b8520c3ae6a72fe0988ab2",
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
  "slug": "mathlib-tacticanalysis-tryateachstepfromstrings--3611734275b0d56d60a3364b",
  "source": {
    "blob": "7a3ca29a2dba64302076428151b82ea4878868ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 464,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3611734275b0d56d60a3364b4e420207bdbb579fa93ba9b406e35eb667619ff3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3c51f177bf1d93e9b3b0b37a7cb08310009557e28b8520c3ae6a72fe0988ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–499.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3ca29a2dba64302076428151b82ea4878868ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
