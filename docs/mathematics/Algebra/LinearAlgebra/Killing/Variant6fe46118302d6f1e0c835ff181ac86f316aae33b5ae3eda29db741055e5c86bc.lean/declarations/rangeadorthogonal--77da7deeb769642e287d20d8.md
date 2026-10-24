# rangeAdOrthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da2e2331ab79009e349e45f2ae75eafd67d7eda334450817d27d2634080991fb",
  "kind": "def",
  "lexical_name": "rangeAdOrthogonal",
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
  "slug": "rangeadorthogonal--77da7deeb769642e287d20d8",
  "source": {
    "blob": "15f8a283d51bb7060fc03691cf3430b9e5bbb5c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77da7deeb769642e287d20d88784c6a9e4e84e9a7a07463e1b22a39607480e20",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da2e2331ab79009e349e45f2ae75eafd67d7eda334450817d27d2634080991fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] noncomputable def rangeAdOrthogonal : LieSubmodule R L (LieDerivation R L L) where
  __ := 𝕀ᗮ
  lie_mem := by
    intro x D hD
    have : 𝕀ᗮ = (ad R L).idealRange.killingCompl := by simp [← (ad_isIdealMorphism R L).eq]
    change D ∈ 𝕀ᗮ at hD
    change ⁅x, D⁆ ∈ 𝕀ᗮ
    rw [this] at hD ⊢
    rw [← lie_ad]
    exact lie_mem_right _ _ (ad R L).idealRange.killingCompl _ _ hD

variable {R L}

/-- If a derivation `D` is in the Killing orthogonal of the range of the adjoint action, then, for
any `x : L`, `ad (D x)` is also in this orthogonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f8a283d51bb7060fc03691cf3430b9e5bbb5c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
