# preEvaluate_read_outside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaf911b8-01a6-0780-1c17-4852f6deeb89",
  "kind": "theorem",
  "lexical_name": "preEvaluate_read_outside",
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
  "slug": "preevaluate-read-outside--b6d85f4f35a5449b27a572df",
  "source": {
    "blob": "30ab4fede61eaf4d948c331bc018521c2f9e9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6d85f4f35a5449b27a572df025e8a13c479ecfa0e549e2f1e7e700570ea43c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf911b8-01a6-0780-1c17-4852f6deeb89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preEvaluate_read_outside {Γ : List (Expr S)} {M T : Expr S}
    (t : TypingTree P Γ M T) (e : Environment (hw := hw) Ω C hno Γ)
    (hm : Ω.profile (M.subst e.images).normalForm ∉ C) :
    (preEvaluate Ω C hno t e).read.val = Candidates.Top Ω (M.subst e.images).normalForm := by
  cases t with
  | var ht hd hc =>
      exact by simp only [preEvaluate,PreResult.lookup,PreResult.baseResult,
        PreResult.baseRead,dif_neg hm]
  | sort ht ha hc => rfl
  | product ht d b hr hc => exact by simp only [preEvaluate,PreResult.product,if_neg hm]
  | abstraction ht d b hp hc =>
      exact by simp only [preEvaluate,PreResult.abstraction,
        PreResult.baseResult,PreResult.baseRead,dif_neg hm]
  | application ht f a hc =>
      exact by simp only [preEvaluate,PreResult.application,
        PreResult.baseResult,PreResult.baseRead,dif_neg hm]
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ab4fede61eaf4d948c331bc018521c2f9e9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
