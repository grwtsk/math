# elabNormNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a964bf252e44f66079a462019a2fa24406abe7ead03ac24cbe3797ac709bb9c",
  "kind": "def",
  "lexical_name": "elabNormNum",
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
  "slug": "elabnormnum--7d799f7edbf3bd274ca90acd",
  "source": {
    "blob": "c7659707cfb462aee4fe5cfb00901ad061ddb9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d799f7edbf3bd274ca90acdd50f2178d1df94af85053280b5e2962bf4a013f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a964bf252e44f66079a462019a2fa24406abe7ead03ac24cbe3797ac709bb9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabNormNum (cfg args loc : Syntax) (simpOnly := false) (useSimp := true) : TacticM Unit := do
  let g ← getMainGoal
  g.withContext do
  let ctx ← getSimpContext cfg args (!useSimp || simpOnly)
  let res ← match expandOptLocation loc with
  | .targets hyps simplifyTarget => normNumAt g ctx (← getFVarIds hyps) simplifyTarget useSimp
  | .wildcard => normNumAt g ctx (← g.getNondepPropHyps) (simplifyTarget := true) useSimp
  match res with
  | none => replaceMainGoal []
  | some (_, g) => replaceMainGoal [g]

end Meta.NormNum

namespace Tactic
open Lean.Parser.Tactic Meta.NormNum

/--
Normalize numerical expressions. Supports the operations `+` `-` `*` `/` `⁻¹` `^` and `%`
over numerical types such as `ℕ`, `ℤ`, `ℚ`, `ℝ`, `ℂ` and some general algebraic types,
and can prove goals of the form `A = B`, `A ≠ B`, `A < B` and `A ≤ B`, where `A` and `B` are
numerical expressions. It also has a relatively simple primality prover.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7659707cfb462aee4fe5cfb00901ad061ddb9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
