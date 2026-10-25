# gcongrDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fb66bd471c8ecff47db6265c3cd664f3929b22b34ae22da320a48ae15c189f7",
  "kind": "def",
  "lexical_name": "gcongrDischarger",
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
  "slug": "gcongrdischarger--9cf7fd1ec2126b2f45eeaf14",
  "source": {
    "blob": "89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 525,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cf7fd1ec2126b2f45eeaf14850a3633c0af1e5fd1ace1ab177355f8ebf94d78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fb66bd471c8ecff47db6265c3cd664f3929b22b34ae22da320a48ae15c189f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gcongrDischarger (goal : MVarId) : MetaM Unit := Elab.Term.TermElabM.run' do
  trace[Meta.gcongr] "Attempting to discharge side goal {goal}"
  let [] ← Elab.Tactic.run goal <|
      Elab.Tactic.evalTactic (Unhygienic.run `(tactic| gcongr_discharger))
    | failure

open Elab Tactic

/-- See if the term is `a = b` and the goal is `a ∼ b` or `b ∼ a`, with `∼` reflexive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
