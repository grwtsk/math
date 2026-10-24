# gamma_preorder_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de011578-ea79-c6f2-150d-bfaafe675a8f",
  "kind": "theorem",
  "lexical_name": "gamma_preorder_refl",
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
  "slug": "gamma-preorder-refl--e4e8ccc9df1ca8714840a9ce",
  "source": {
    "blob": "aa3d9e8d306e9ac82e10631af6b2e685b457fba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 442,
    "path": "GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e8ccc9df1ca8714840a9ce2c4f2977cdbe52d34bf7ecb3bd197a052b90675b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de011578-ea79-c6f2-150d-bfaafe675a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_preorder_refl :
    Valid Γ -> Γ ≤ Γ := by
  intro _
  exact ⟨LogicalFoundation.foundation_refl Γ.logicalFoundation,
    Nat.le_refl Γ.level, Nat.le_refl Γ.maxDepth, Nat.le_refl Γ.maxClosureSteps,
    Nat.le_refl Γ.maxSimpleApproxTerms, Nat.le_refl Γ.maxSeriesTerms,
    Nat.le_refl Γ.maxEvolutionSteps, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3d9e8d306e9ac82e10631af6b2e685b457fba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
