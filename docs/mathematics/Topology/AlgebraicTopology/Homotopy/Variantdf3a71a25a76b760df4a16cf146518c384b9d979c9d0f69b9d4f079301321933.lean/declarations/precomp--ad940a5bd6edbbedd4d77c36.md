# precomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f34d006bbfee11196a21ab8704c09da8d71c0f5633a7d1b4dccc622b2e33a7e1",
  "kind": "def",
  "lexical_name": "precomp",
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
  "slug": "precomp--ad940a5bd6edbbedd4d77c36",
  "source": {
    "blob": "003eaa3042c9988c0f3450451650a4fef87875af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 152,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad940a5bd6edbbedd4d77c3640fc98a67b390602e13053875ac1e74f61128236",
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

Occurrence: `declaration:f34d006bbfee11196a21ab8704c09da8d71c0f5633a7d1b4dccc622b2e33a7e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def precomp (H : Homotopy f g) {X' : SimplicialObject C} (p : X' ⟶ X) :
    Homotopy (p ≫ f) (p ≫ g) where
  h i := p.app _ ≫ H.h i
  h_zero_comp_δ_zero n := by
    simpa [-h_zero_comp_δ_zero] using p.app _ ≫= H.h_zero_comp_δ_zero n
  h_last_comp_δ_last n := by
    simpa [-h_last_comp_δ_last] using p.app _ ≫= H.h_last_comp_δ_last n
  h_succ_comp_δ_castSucc_of_lt i j hij := by
    simpa using p.app _ ≫= H.h_succ_comp_δ_castSucc_of_lt i j hij
  h_succ_comp_δ_castSucc_succ j := by
    simpa using p.app _ ≫= H.h_succ_comp_δ_castSucc_succ j
  h_castSucc_comp_δ_succ_of_lt i j hji := by
    simpa using p.app _ ≫= H.h_castSucc_comp_δ_succ_of_lt i j hji
  h_comp_σ_castSucc_of_le i j hij := by
    simpa using p.app _ ≫= H.h_comp_σ_castSucc_of_le i j hij
  h_comp_σ_succ_of_lt i j hji := by
    simpa using p.app _ ≫= H.h_comp_σ_succ_of_lt i j hji

end CategoryTheory.SimplicialObject.Homotopy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdf3a71a25a76b760df4a16cf146518c384b9d979c9d0f69b9d4f079301321933.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003eaa3042c9988c0f3450451650a4fef87875af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
