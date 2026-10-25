# progArgIdx?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:debd3924c2a96310de7cdd45183c80f51b09ee6c4d2b47fbd70aaa50c3459ba2",
  "kind": "def",
  "lexical_name": "progArgIdx?",
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
  "slug": "progargidx--1ee010dec1adb5423143e54b",
  "source": {
    "blob": "7af6866c289dd6b6425486f17fdf675ce59a00ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ee010dec1adb5423143e54b774844b4984c745ec6ba939893e8e9121117d99f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:debd3924c2a96310de7cdd45183c80f51b09ee6c4d2b47fbd70aaa50c3459ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def progArgIdx? (declName : Name) : MetaM (Option Nat) := do
  forallTelescope (← getConstInfo declName).type fun xs _ => do
    for i in [0:xs.size] do
      if (← xs[i]!.fvarId!.getUserName) == `x then
        return some i
    return none

/--
Selects the program a spec conclusion is keyed on: the program of a `Triple`, or the program inside
the `wp` on the RHS of a `pre ⊑ wp …` entailment. Returns `none` if `type` is neither shape — e.g. a
bare `lhs ⊑ rhs` whose RHS is not a `wp` application (an invariant entailment such as
`(I n h).inv … ⊑ Q n r.2`, which can appear as an ordinary hypothesis but is not a spec). Callers use
`none` to skip such non-spec hypotheses instead of failing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af6866c289dd6b6425486f17fdf675ce59a00ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
