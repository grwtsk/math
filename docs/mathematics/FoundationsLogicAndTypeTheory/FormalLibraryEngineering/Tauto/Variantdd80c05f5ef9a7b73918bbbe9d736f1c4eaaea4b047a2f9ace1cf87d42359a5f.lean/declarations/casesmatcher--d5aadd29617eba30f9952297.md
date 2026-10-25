# casesMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d553ad58dce6f71cb4324273ba240ea97e4961b4d3bbba881f832159242d0db1",
  "kind": "def",
  "lexical_name": "casesMatcher",
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
  "slug": "casesmatcher--d5aadd29617eba30f9952297",
  "source": {
    "blob": "cf606a2c61c21e3f37bd967f78cbe51a68532dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variantdd80c05f5ef9a7b73918bbbe9d736f1c4eaaea4b047a2f9ace1cf87d42359a5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5aadd29617eba30f995229796f0b3f52f6a225c81d0d7bf9f9a5b94722e2a7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variantdd80c05f5ef9a7b73918bbbe9d736f1c4eaaea4b047a2f9ace1cf87d42359a5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d553ad58dce6f71cb4324273ba240ea97e4961b4d3bbba881f832159242d0db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def casesMatcher (e : Q(Prop)) : MetaM Bool :=
  match e with
  | ~q(_ ∧ _) => pure true
  | ~q(_ ∨ _) => pure true
  | ~q(Exists _) => pure true
  | ~q(False) => pure true
  | _ => pure false

@[inherit_doc]
local infixl: 50 " <;> " => andThenOnSubgoals

/-- The core loop of the `tauto` tactic. Repeatedly tries to break down propositions
until no more progress can be made. Tries `assumption` and `contradiction` at every
step, to discharge goals as soon as possible. Does not do anything that requires
backtracking.

TODO: The Lean 3 version uses more-powerful versions of `contradiction` and `assumption`
that additionally apply `symm` and use a fancy union-find data structure to avoid
duplicated work.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variantdd80c05f5ef9a7b73918bbbe9d736f1c4eaaea4b047a2f9ace1cf87d42359a5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variantdd80c05f5ef9a7b73918bbbe9d736f1c4eaaea4b047a2f9ace1cf87d42359a5f.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf606a2c61c21e3f37bd967f78cbe51a68532dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
