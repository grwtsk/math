# center_equiv_rootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f384427dc13f08bf58c13a8735a1190bc290878d967e22bb71021c648af312b7",
  "kind": "def",
  "lexical_name": "center_equiv_rootsOfUnity",
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
  "slug": "center-equiv-rootsofunity--b790df5c5b573b1a94182143",
  "source": {
    "blob": "c235930b2b76001f6d4a82f61cc6429f9fff6a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b790df5c5b573b1a941821432db0df36181bec907b81d4c78863aa9766b03516",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f384427dc13f08bf58c13a8735a1190bc290878d967e22bb71021c648af312b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def center_equiv_rootsOfUnity :
    center (SpecialLinearGroup n R) ≃* rootsOfUnity (max (Fintype.card n) 1) R :=
  (isEmpty_or_nonempty n).by_cases
  (fun hn ↦ by
    rw [center_eq_bot_of_subsingleton, Fintype.card_eq_zero, max_eq_right_of_lt zero_lt_one,
      rootsOfUnity_one]
    exact MulEquiv.ofUnique)
  (fun _ ↦
    (max_eq_left (NeZero.one_le : 1 ≤ Fintype.card n)).symm ▸
      center_equiv_rootsOfUnity' (Classical.arbitrary n))

end center

section cast

/-- Coercion of SL `n` `ℤ` to SL `n` `R` for a commutative ring `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c235930b2b76001f6d4a82f61cc6429f9fff6a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
