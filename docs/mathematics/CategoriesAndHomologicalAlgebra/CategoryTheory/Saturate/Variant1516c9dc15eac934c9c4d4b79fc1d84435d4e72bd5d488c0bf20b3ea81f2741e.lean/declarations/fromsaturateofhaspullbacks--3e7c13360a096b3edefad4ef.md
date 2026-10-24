# fromSaturateOfHasPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccebc1e070f9768d81fb4504c4d207ca7256501b9cafabf3fa170365f441444d",
  "kind": "def",
  "lexical_name": "fromSaturateOfHasPullbacks",
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
  "slug": "fromsaturateofhaspullbacks--3e7c13360a096b3edefad4ef",
  "source": {
    "blob": "f2537e58f3e56f4f94bd3848f54290bd5cda707c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e7c13360a096b3edefad4efe24b152d53ada4a7bd371262781f6e37f9f60179",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccebc1e070f9768d81fb4504c4d207ca7256501b9cafabf3fa170365f441444d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromSaturateOfHasPullbacks {S : C} (E : PreZeroHypercover S)
    [E.HasPullbacks] : E.saturate ⟶ E.toPreOneHypercover where
  s₀ i := i
  h₀ i := 𝟙 _
  s₁ {i j} k := ⟨⟩
  h₁ {i j} k := pullback.lift k.fst k.snd k.w

variable {S : C} (E : PreZeroHypercover S) [E.HasPullbacks]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The identity of the minimal pre-`1`-hypercover when `E` has pairwise pullbacks
is homotopic to itself. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2537e58f3e56f4f94bd3848f54290bd5cda707c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
