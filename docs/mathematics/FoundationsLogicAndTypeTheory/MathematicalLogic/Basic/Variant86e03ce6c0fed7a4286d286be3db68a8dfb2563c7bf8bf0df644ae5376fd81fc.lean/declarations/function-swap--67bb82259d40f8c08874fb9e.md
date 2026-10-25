# Function.swap₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:230d04cafd543a06aa530125d879882701fee7ce90e8f43718ef782b4e75da97",
  "kind": "abbrev",
  "lexical_name": "Function.swap₂",
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
  "slug": "function-swap--67bb82259d40f8c08874fb9e",
  "source": {
    "blob": "ac8393f46c7de3396e22382b15ad58ede775b4e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67bb82259d40f8c08874fb9e1ebed9a41a3d6705094d6816bf2536dd6c72c2ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:230d04cafd543a06aa530125d879882701fee7ce90e8f43718ef782b4e75da97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Function.swap₂ {ι₁ ι₂ : Sort*} {κ₁ : ι₁ → Sort*} {κ₂ : ι₂ → Sort*}
    {φ : ∀ i₁, κ₁ i₁ → ∀ i₂, κ₂ i₂ → Sort*} (f : ∀ i₁ j₁ i₂ j₂, φ i₁ j₁ i₂ j₂)
    (i₂ j₂ i₁ j₁) : φ i₁ j₁ i₂ j₂ := f i₁ j₁ i₂ j₂

end Miscellany

open Function

/-!
### Declarations about propositional connectives
-/

section Propositional

/-! ### Declarations about `implies` -/

alias Iff.imp := imp_congr

-- This is a duplicate of `Classical.imp_iff_right_iff`. Deprecate?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant86e03ce6c0fed7a4286d286be3db68a8dfb2563c7bf8bf0df644ae5376fd81fc.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8393f46c7de3396e22382b15ad58ede775b4e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
