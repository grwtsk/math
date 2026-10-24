# monoidHomSlashAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8f1581ea43c5668b7f9c49dea721c0c33453638492ae2d88df61c7b15c434fc",
  "kind": "def",
  "lexical_name": "monoidHomSlashAction",
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
  "slug": "monoidhomslashaction--b653decf6daea3ad5020b599",
  "source": {
    "blob": "67776816f49fd552e79e034b51d4a658146264e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b653decf6daea3ad5020b599af2d45d520b8705718d0799cbc66c215732c9963",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8f1581ea43c5668b7f9c49dea721c0c33453638492ae2d88df61c7b15c434fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomSlashAction {β G H α γ : Type*} [Group G] [AddMonoid α] [SMul γ α] [Group H]
    [SlashAction β G α γ] (h : H →* G) : SlashAction β H α γ where
  map k g := SlashAction.map γ k (h g)
  zero_slash k g := SlashAction.zero_slash k (h g)
  slash_one k a := by simp only [map_one, SlashAction.slash_one]
  slash_mul k g gg a := by simp only [map_mul, SlashAction.slash_mul]
  smul_slash _ _ := SlashAction.smul_slash _ _
  add_slash _ g _ _ := SlashAction.add_slash _ (h g) _ _
#align monoid_hom_slash_action monoidHomSlashAction

namespace ModularForm

noncomputable section

/-- The weight `k` action of `GL(2, ℝ)⁺` on functions `f : ℍ → ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67776816f49fd552e79e034b51d4a658146264e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
