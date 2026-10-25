# compareSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:383365d71941bd2292d99c91a7fddb5b4800d374a8dacc98b5c7baf4a4184c88",
  "kind": "def",
  "lexical_name": "compareSymm",
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
  "slug": "comparesymm--a7e85121f3bf2cf0cab89137",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7e85121f3bf2cf0cab891373aa25e0d9d72001a8885424d74eafe3babde253e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:383365d71941bd2292d99c91a7fddb5b4800d374a8dacc98b5c7baf4a4184c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compareSymm : (k₁ k₂ : Expr × Name) → CCM Bool
  | (e₁, n₁), (e₂, n₂) => do
    if n₁ != n₂ then return false
    if n₁ == ``Eq || n₁ == ``Iff then
      compareSymmAux e₁.appFn!.appArg! e₁.appArg! e₂.appFn!.appArg! e₂.appArg!
    else
      let some (_, lhs₁, rhs₁) ← e₁.relSidesIfSymm? | failure
      let some (_, lhs₂, rhs₂) ← e₂.relSidesIfSymm? | failure
      compareSymmAux lhs₁ rhs₁ lhs₂ rhs₂

/-- Given `e := R lhs rhs`, if `R` is a reflexive relation and `lhs` is equivalent to `rhs`, add
equality `e = True`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
