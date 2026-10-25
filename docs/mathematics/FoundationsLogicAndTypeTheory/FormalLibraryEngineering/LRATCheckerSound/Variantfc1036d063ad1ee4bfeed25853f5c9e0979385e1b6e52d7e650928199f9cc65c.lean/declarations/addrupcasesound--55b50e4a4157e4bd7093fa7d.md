# addRupCaseSound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d11e087c-adcf-a24b-410a-388218a018fc",
  "kind": "theorem",
  "lexical_name": "addRupCaseSound",
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
  "slug": "addrupcasesound--55b50e4a4157e4bd7093fa7d",
  "source": {
    "blob": "08cf3767506f25f04c8f00a25f511fd5b749aedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variantfc1036d063ad1ee4bfeed25853f5c9e0979385e1b6e52d7e650928199f9cc65c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55b50e4a4157e4bd7093fa7d8af9d3296c398d4f95fa482d5998373879fc52da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variantfc1036d063ad1ee4bfeed25853f5c9e0979385e1b6e52d7e650928199f9cc65c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d11e087c-adcf-a24b-410a-388218a018fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addRupCaseSound [DecidableEq α] [Clause α β] [Entails α σ] [Formula α β σ] (f : σ)
    (f_readyForRupAdd : ReadyForRupAdd f)
    (f_readyForRatAdd : ReadyForRatAdd f) (c : β) (f' : σ) (rupHints : Array Nat)
    (heq : performRupAdd f c rupHints = (f', true))
    (restPrf : List (Action β α)) (restPrfWellFormed : ∀ (a : Action β α), a ∈ restPrf → WellFormedAction a)
    (ih :
      ReadyForRupAdd f' → ReadyForRatAdd f' → (∀ (a : Action β α), a ∈ restPrf → WellFormedAction a) →
      lratChecker f' restPrf = success → Unsatisfiable α f')
    (f'_success : lratChecker f' restPrf = success) :
    Unsatisfiable α f := by
  grind [Unsatisfiable, Liff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variantfc1036d063ad1ee4bfeed25853f5c9e0979385e1b6e52d7e650928199f9cc65c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variantfc1036d063ad1ee4bfeed25853f5c9e0979385e1b6e52d7e650928199f9cc65c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08cf3767506f25f04c8f00a25f511fd5b749aedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
