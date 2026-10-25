# verifyFakeRfl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dafc2bd8d918ae70f3b05ceb3d2a6acfbbcf9e701c7de7d6bb7a2640866c2f3c",
  "kind": "def",
  "lexical_name": "verifyFakeRfl",
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
  "slug": "verifyfakerfl--d257debc2726116199c0735d",
  "source": {
    "blob": "dfdfe7a08cab1c8d5d54874a2ceece365dc858f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 628,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variant0f4066990f27fb31278f16d35a15617827b428aa7bab2ccfcee4c41e721d126a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d257debc2726116199c0735d0466bc630c20c5b7ec0f4deaecef86330a37d9cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variant0f4066990f27fb31278f16d35a15617827b428aa7bab2ccfcee4c41e721d126a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dafc2bd8d918ae70f3b05ceb3d2a6acfbbcf9e701c7de7d6bb7a2640866c2f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def verifyFakeRfl := verifyTryThisSuggestions
  (fun _ _ => `(tactic| fakeRfl?))
  "fakeRfl?"

/--
info: Try this:
  [apply] rfl
---
warning: `fakeRfl?` suggestion failed: `rfl` did not close the goal
-/
#guard_msgs in
set_option linter.tacticAnalysis.dummy true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variant0f4066990f27fb31278f16d35a15617827b428aa7bab2ccfcee4c41e721d126a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variant0f4066990f27fb31278f16d35a15617827b428aa7bab2ccfcee4c41e721d126a.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfdfe7a08cab1c8d5d54874a2ceece365dc858f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
