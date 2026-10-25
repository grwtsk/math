# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c291b11b8d2960d6d32ee4455084232d5f7908318c53a6621105bbe0d1fa45f6",
  "kind": "def",
  "lexical_name": "induction",
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
  "slug": "induction--6cbeb80a25b39e6ed29b78bf",
  "source": {
    "blob": "73edaf171ae5d5a07ce06bb02ae55be628c86a59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 596,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantf14dd70e3755dc0677303ca162ab9b195d54d64b178a9e7225a6b4093a8e3926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cbeb80a25b39e6ed29b78bfb145aa9582ea6a675323cc332294c826fbded573",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantf14dd70e3755dc0677303ca162ab9b195d54d64b178a9e7225a6b4093a8e3926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c291b11b8d2960d6d32ee4455084232d5f7908318c53a6621105bbe0d1fa45f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] def induction {motive : Fin (n + 1) → Sort _} (zero : motive 0)
    (succ : ∀ i : Fin n, motive (castSucc i) → motive i.succ) :
    ∀ i : Fin (n + 1), motive i
  | ⟨0, hi⟩ => by rwa [Fin.mk_zero]
  | ⟨i+1, hi⟩ => succ ⟨i, Nat.lt_of_succ_lt_succ hi⟩ (induction zero succ ⟨i, Nat.lt_of_succ_lt hi⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantf14dd70e3755dc0677303ca162ab9b195d54d64b178a9e7225a6b4093a8e3926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantf14dd70e3755dc0677303ca162ab9b195d54d64b178a9e7225a6b4093a8e3926.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73edaf171ae5d5a07ce06bb02ae55be628c86a59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
