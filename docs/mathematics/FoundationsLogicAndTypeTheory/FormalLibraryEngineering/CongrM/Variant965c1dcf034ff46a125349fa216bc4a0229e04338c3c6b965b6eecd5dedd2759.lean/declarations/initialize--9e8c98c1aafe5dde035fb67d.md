# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1ad41af8c841e399a0c0fdc70b9d2482b24d745ac164e5169390e634f2ea4d9",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--9e8c98c1aafe5dde035fb67d",
  "source": {
    "blob": "96523f2ac354a9df9bcd1c1ad798aaca6940eabc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant965c1dcf034ff46a125349fa216bc4a0229e04338c3c6b965b6eecd5dedd2759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e8c98c1aafe5dde035fb67d7e967965b1050b2187225b754540bd607ff87044",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant965c1dcf034ff46a125349fa216bc4a0229e04338c3c6b965b6eecd5dedd2759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1ad41af8c841e399a0c0fdc70b9d2482b24d745ac164e5169390e634f2ea4d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
initialize registerTraceClass `Tactic.congrm

/--
`congrm e` is a tactic for proving goals of the form `lhs = rhs`, `lhs ↔ rhs`, `lhs ≍ rhs`,
or `R lhs rhs` when `R` is a reflexive relation.
The expression `e` is a pattern containing placeholders `?_`,
and this pattern is matched against `lhs` and `rhs` simultaneously.
These placeholders generate new goals that state that corresponding subexpressions
in `lhs` and `rhs` are equal.
If the placeholders have names, such as `?m`, then the new goals are given tags with those names.

Examples:
```lean
example {a b c d : ℕ} :
    Nat.pred a.succ * (d + (c + a.pred)) = Nat.pred b.succ * (b + (c + d.pred)) := by
  congrm Nat.pred (Nat.succ ?h1) * (?h2 + ?h3)
  /-  Goals left:
  case h1 ⊢ a = b
  case h2 ⊢ d = b
  case h3 ⊢ c + a.pred = c + d.pred
  -/
  sorry
  sorry
  sorry

example {a b : ℕ} (h : a = b) : (fun y : ℕ => ∀ z, a + a = z) = (fun x => ∀ z, b + a = z) := by
  congrm fun x => ∀ w, ?_ + a = w
  -- ⊢ a = b
  exact h
```

The `congrm` command is a convenient frontend to `congr(...)` congruence quotations.
If the goal is an equality, `congrm e` is equivalent to `refine congr(e')` where `e'` is
built from `e` by replacing each placeholder `?m` by `$(?m)`.
The pattern `e` is allowed to contain `$(...)` expressions to immediately substitute
equality proofs into the congruence, just like for congruence quotations.

[More documentation on `congr()` and `congrm`.](https://leanprover-community.github.io/extras/congr.html)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant965c1dcf034ff46a125349fa216bc4a0229e04338c3c6b965b6eecd5dedd2759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variant965c1dcf034ff46a125349fa216bc4a0229e04338c3c6b965b6eecd5dedd2759.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96523f2ac354a9df9bcd1c1ad798aaca6940eabc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
