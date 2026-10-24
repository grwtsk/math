# postcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecb33035d34465e5d34b1baa86e66f8d4cd23adfd6839b54dcf4282da9150c6b",
  "kind": "def",
  "lexical_name": "postcomp",
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
  "slug": "postcomp--7cbba6e1d2e3c4a0c42f7285",
  "source": {
    "blob": "003eaa3042c9988c0f3450451650a4fef87875af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 132,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbba6e1d2e3c4a0c42f728572b74a54b29ac150a23c1125352dd421d8c096b9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecb33035d34465e5d34b1baa86e66f8d4cd23adfd6839b54dcf4282da9150c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcomp (H : Homotopy f g) {Y' : SimplicialObject C} (p : Y ⟶ Y') :
    Homotopy (f ≫ p) (g ≫ p) where
  h i := H.h i ≫ p.app _
  h_zero_comp_δ_zero n := by
    simpa [-h_zero_comp_δ_zero] using H.h_zero_comp_δ_zero n =≫ p.app _
  h_last_comp_δ_last n := by
    simpa [-h_last_comp_δ_last] using H.h_last_comp_δ_last n =≫ p.app _
  h_succ_comp_δ_castSucc_of_lt i j hij := by
    simpa using H.h_succ_comp_δ_castSucc_of_lt i j hij =≫ p.app _
  h_succ_comp_δ_castSucc_succ j := by
    simpa using H.h_succ_comp_δ_castSucc_succ j =≫ p.app _
  h_castSucc_comp_δ_succ_of_lt i j hji := by
    simpa using H.h_castSucc_comp_δ_succ_of_lt i j hji =≫ p.app _
  h_comp_σ_castSucc_of_le i j hij := by
    simpa using H.h_comp_σ_castSucc_of_le i j hij =≫ p.app _
  h_comp_σ_succ_of_lt i j hji := by
    simpa using H.h_comp_σ_succ_of_lt i j hji =≫ p.app _

/-- Precompose a simplicial homotopy with a morphism of simplicial objects. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003eaa3042c9988c0f3450451650a4fef87875af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
