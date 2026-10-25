# elabContextLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eba8780c5833ed150b797104be1fb1ad0fec559e7b18edc21a7c52458a756894",
  "kind": "def",
  "lexical_name": "elabContextLemmas",
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
  "slug": "elabcontextlemmas--7a00b9699ed9809c1201c630",
  "source": {
    "blob": "f99627f8a8f32c2902e0f28b72f6879c5b302ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a00b9699ed9809c1201c630a37528668f3a91127efae2099ac8ed5ee0470af8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eba8780c5833ed150b797104be1fb1ad0fec559e7b18edc21a7c52458a756894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabContextLemmas (cfg : SolveByElimConfig) (g : MVarId)
    (lemmas : List (TermElabM Expr)) (ctx : SolveByElimConfig → TermElabM (List Expr)) :
    MetaM (List Expr) := do
  g.withContext (Elab.Term.TermElabM.run' do pure ((← ctx cfg) ++ (← lemmas.mapM id)))

/-- Returns the list of tactics corresponding to applying the available lemmas to the goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f99627f8a8f32c2902e0f28b72f6879c5b302ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
