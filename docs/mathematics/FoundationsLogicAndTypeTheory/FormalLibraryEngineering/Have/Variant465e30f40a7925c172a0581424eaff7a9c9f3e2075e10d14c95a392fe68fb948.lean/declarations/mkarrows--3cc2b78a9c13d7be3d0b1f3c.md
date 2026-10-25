# mkArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6bdcad188cacccbf3f676eabf4063db1ab1634fcf477f337aba006acf96c62f",
  "kind": "def",
  "lexical_name": "mkArrows",
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
  "slug": "mkarrows--3cc2b78a9c13d7be3d0b1f3c",
  "source": {
    "blob": "344ea4561f941db7a5665f5d63f54019b2cf59a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cc2b78a9c13d7be3d0b1f3ccce64854a79b54375e2de14e38a69fce17d6faeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6bdcad188cacccbf3f676eabf4063db1ab1634fcf477f337aba006acf96c62f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkArrows (αs : Array Expr) (β : Expr) : SymM Expr := do
  go αs.size β (Nat.le_refl _)
where
  go (i : Nat) (β : Expr) (h : i ≤ αs.size) : SymM Expr := do
    match i, h with
    | 0, _ => return β
    | i+1, h => go i (← mkForallS `a .default αs[i] β) (by omega)

/--
Transform a `have`-telescope into a parallel beta-application.

**Input**: `have x₁ := v₁; ...; have xₙ := vₙ; b`

**Output**: A `ToBetaAppResult` containing the equivalent beta-application.

## Transformation Details

For each `have xᵢ := vᵢ` where `vᵢ` depends on `xᵢ₁, ..., xᵢₖ` (aka `depsₖ`)
- The argument becomes `fun depsₖ => vᵢ[depsₖ]`
- The type becomes `Dᵢ₁ → ... → Dᵢₖ → Tᵢ` where `Dᵢⱼ` is the type of `xᵢⱼ`
- In the body, `xᵢ` is replaced by `xᵢ' sᵢ₁ ... sᵢₖ` where `sᵢⱼ` is the replacement for `xᵢⱼ`

The proof is `rfl` since the transformation is definitionally equal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `344ea4561f941db7a5665f5d63f54019b2cf59a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
