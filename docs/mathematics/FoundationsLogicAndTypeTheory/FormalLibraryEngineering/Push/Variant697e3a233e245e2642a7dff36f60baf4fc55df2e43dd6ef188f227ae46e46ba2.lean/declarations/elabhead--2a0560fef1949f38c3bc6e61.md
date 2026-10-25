# elabHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83f282e3ffde84e91252df6e87e731216dfbb0d6100690927a97215da93ac15f",
  "kind": "def",
  "lexical_name": "elabHead",
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
  "slug": "elabhead--2a0560fef1949f38c3bc6e61",
  "source": {
    "blob": "7351c5251d9fa65fa3f75145b8d6367065f8b2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a0560fef1949f38c3bc6e6102320216b6c798fa00202c84f46ffd7975e5b1dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83f282e3ffde84e91252df6e87e731216dfbb0d6100690927a97215da93ac15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabHead (stx : Term) : TermElabM Head := withRef stx do
  -- we elaborate `stx` to get an appropriate error message if the term isn't well formed,
  -- and to add hover information
  _ ← withTheReader Term.Context ({ · with ignoreTCFailures := true }) <|
    Term.withoutModifyingElabMetaStateWithInfo <| Term.withoutErrToSorry <| Term.elabTerm stx none
  match stx with
  | `(fun $_ => _) => return .lambda
  | `(∀ $_, _) => return .forall
  | _ =>
    match ← resolvePushId? stx with
    | some (.const c _) => return .const c
    | _ => throwError "Could not resolve `push` argument `{stx}`. \
      Expected either a constant, e.g. `push Not`, \
      or notation with underscores, e.g. `push ¬ _`"

end ElabHead

/-- Elaborate the `(disch := ...)` syntax for a `simp`-like tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351c5251d9fa65fa3f75145b8d6367065f8b2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
