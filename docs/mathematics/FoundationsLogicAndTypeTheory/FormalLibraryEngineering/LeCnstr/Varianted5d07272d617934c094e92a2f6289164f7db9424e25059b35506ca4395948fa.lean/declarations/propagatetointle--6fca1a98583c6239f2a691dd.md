# propagateToIntLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5e4eade2a51c99bb1bbbaf0076f0feaca196dc89e3733267844dad0e12bbbef",
  "kind": "def",
  "lexical_name": "propagateToIntLe",
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
  "slug": "propagatetointle--6fca1a98583c6239f2a691dd",
  "source": {
    "blob": "64113a2b7a75b6958a994baa69871052d6f8e57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fca1a98583c6239f2a691ddef0d66163458f9713f1d8aa221939c9692b60c36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5e4eade2a51c99bb1bbbaf0076f0feaca196dc89e3733267844dad0e12bbbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateToIntLe (e : Expr) (eqTrue : Bool) : ToIntM Unit := do
  let some thm ← if eqTrue then getOfLE? else getOfNotLE? | return ()
  let_expr LE.le _ _ a b := e | return ()
  let gen ← getGeneration e
  let (a', h₁) ← toInt a
  let (b', h₂) ← toInt b
  let thm := mkApp6 thm a b a' b' h₁ h₂
  let (a', b') := if eqTrue then (a', b') else (mkIntAdd b' (mkIntLit 1), a')
  let lhs ← toLinearExpr a' gen
  let rhs ← toLinearExpr b' gen
  let p := lhs.sub rhs |>.norm
  let c := { p, h := .coreToInt e eqTrue thm lhs rhs : LeCnstr }
  c.assertCore

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64113a2b7a75b6958a994baa69871052d6f8e57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
