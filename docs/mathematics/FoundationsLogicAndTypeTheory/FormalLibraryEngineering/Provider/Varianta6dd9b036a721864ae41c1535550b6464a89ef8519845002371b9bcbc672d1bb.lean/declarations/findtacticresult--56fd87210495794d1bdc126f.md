# FindTacticResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49fc132c72a0641a7c2d00c15f434743308b3d42e459264313f6cde0f1806536",
  "kind": "inductive",
  "lexical_name": "FindTacticResult",
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
  "slug": "findtacticresult--56fd87210495794d1bdc126f",
  "source": {
    "blob": "0f79cb74b282fe47a4373c3ebcad4e8ae81b0bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56fd87210495794d1bdc126f4a04c8768fafebc22d334b4faf74750383c7fed4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49fc132c72a0641a7c2d00c15f434743308b3d42e459264313f6cde0f1806536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
inductive FindTacticResult
  /-- The nearest enclosing tactic is a tactic, with the given syntax stack. -/
  | tactic : Syntax.Stack → FindTacticResult
  /-- The cursor is between tactics, and the nearest enclosing range is a tactic sequence.
  Code actions will insert tactics at index `insertIdx` into the syntax
  (which is a nullNode of `tactic;*` inside a `tacticSeqBracketed` or `tacticSeq1Indented`). -/
  | tacticSeq : (preferred : Bool) → (insertIdx : Nat) → Syntax.Stack → FindTacticResult

/--
Find the syntax on which to trigger tactic code actions.
This is a pure syntax pass, without regard to elaboration information.

* `preferred : String.Pos → Bool`: used to select "preferred `tacticSeq`s" based on the cursor
  column, when the cursor selection would otherwise be ambiguous. For example, in:
  ```
  · foo
    · bar
      baz
    |
  ```
  where the cursor is at the `|`, we select the `tacticSeq` starting with `foo`, while if the
  cursor was indented to align with `baz` then we would select the `bar; baz` sequence instead.

* `range`: the cursor selection. We do not do much with range selections; if a range selection
  covers more than one tactic then we abort.

* `root`: the root syntax to process

The return value is either a selected tactic, or a selected point in a tactic sequence.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f79cb74b282fe47a4373c3ebcad4e8ae81b0bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
