# findLinarithContradiction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6846cd3039f337f8029f65600d6db23b785429428e40756bd0a3adf98cdbd103",
  "kind": "def",
  "lexical_name": "findLinarithContradiction",
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
  "slug": "findlinarithcontradiction--b69b212b60c16ddd7dcb6d9b",
  "source": {
    "blob": "c85d90d2356618bdac4bf82a55d26e05805b9e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b69b212b60c16ddd7dcb6d9bbaf0be26f282b0c29ed0fdc495a303b414f70777",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6846cd3039f337f8029f65600d6db23b785429428e40756bd0a3adf98cdbd103`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findLinarithContradiction (cfg : LinarithConfig) (g : MVarId) (ls : List (Expr × List Expr)) :
    MetaM Expr :=
  try
    ls.firstM (fun ⟨α, L⟩ =>
      withTraceNode `linarith (return m!"{exceptEmoji ·} running on type {α}") <|
        proveFalseByLinarith cfg.transparency cfg.oracle cfg.discharger g L)
  catch e => throwError "linarith failed to find a contradiction\n{g}\n{e.toMessageData}"

/--
Given a list `hyps` of proofs of comparisons, `runLinarith cfg hyps prefType`
preprocesses `hyps` according to the list of preprocessors in `cfg`.
This results in a list of branches (typically only one),
each of which must succeed in order to close the goal.

In each branch, we partition the list of hypotheses by type, and run `linarith` on each class
in the partition; one of these must succeed in order for `linarith` to succeed on this branch.
If `prefType` is given, it will first use the class of proofs of comparisons over that type.
-/
-- If it succeeds, the passed metavariable should have been assigned.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant8d93d6c6576157fa6084c96c57792a2c12d35d360484b642206b239671876f72.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85d90d2356618bdac4bf82a55d26e05805b9e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
