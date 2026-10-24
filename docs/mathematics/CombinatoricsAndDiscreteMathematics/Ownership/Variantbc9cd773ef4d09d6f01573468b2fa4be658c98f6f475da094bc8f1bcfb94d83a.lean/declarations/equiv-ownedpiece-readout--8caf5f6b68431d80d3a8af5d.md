# equiv_ownedPiece_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98ee61ad-7d45-1cae-dcc7-3cc3f49f9783",
  "kind": "theorem",
  "lexical_name": "equiv_ownedPiece_readout",
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
  "slug": "equiv-ownedpiece-readout--8caf5f6b68431d80d3a8af5d",
  "source": {
    "blob": "bd21904db3f5de21f6a9bb498e39f02973832373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8caf5f6b68431d80d3a8af5d3864016874e7e775dd1e47f77412307b3ab12b44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ee61ad-7d45-1cae-dcc7-3cc3f49f9783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_ownedPiece_readout [DecidableEq Y] [AddCommMonoid M] (e : X ≃ Y)
    (A : Finset X) (C : Fin n → Finset X) (i : Fin n)
    (wX : X → M) (wY : Y → M) (compat : ∀ x, wY (e x) = wX x) :
    (∑ y ∈ ownedPiece (A.image e) (fun j ↦ (C j).image e) i, wY y) =
      ∑ x ∈ ownedPiece A C i, wX x := by
  rw [← image_ownedPiece e e.injective, Finset.sum_image e.injective.injOn]
  exact Finset.sum_congr rfl fun x _ ↦ compat x

/-- A restriction code has one bit per member of its identified source block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd21904db3f5de21f6a9bb498e39f02973832373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
