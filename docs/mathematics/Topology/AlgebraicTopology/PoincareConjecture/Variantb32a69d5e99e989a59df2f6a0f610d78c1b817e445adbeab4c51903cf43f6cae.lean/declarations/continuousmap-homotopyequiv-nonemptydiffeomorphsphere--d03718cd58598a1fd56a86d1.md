# ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:943fe8dcedb0eede2709bf5ded621745d680791495deb459424f1f3aaaded369",
  "kind": "def",
  "lexical_name": "ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere",
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
  "slug": "continuousmap-homotopyequiv-nonemptydiffeomorphsphere--d03718cd58598a1fd56a86d1",
  "source": {
    "blob": "c72165d57ee78d9e1b84a5e145787a286b3d5395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/Topology/AlgebraicTopology/PoincareConjecture/Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d03718cd58598a1fd56a86d1e7e6420ea8d260c82042ab61adeb366b378f26e3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PoincareConjecture/Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:943fe8dcedb0eede2709bf5ded621745d680791495deb459424f1f3aaaded369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere (n : ℕ) : Prop :=
  ∀ (_ : ChartedSpace ℝⁿ M) (_ : IsManifold (𝓡 n) ∞ M),
    M ≃ₕ 𝕊ⁿ → Nonempty (M ≃ₘ⟮𝓡 n, 𝓡 n⟯ 𝕊ⁿ)

/-- The existence of an exotic 7-sphere (due to John Milnor) -/
proof_wanted exists_homeomorph_isEmpty_diffeomorph_sphere_seven :
    ∃ (M : Type) (_ : TopologicalSpace M) (_ : ChartedSpace ℝ⁷ M)
      (_ : IsManifold (𝓡 7) ∞ M) (_homeo : M ≃ₜ 𝕊⁷),
      IsEmpty (M ≃ₘ⟮𝓡 7, 𝓡 7⟯ 𝕊⁷)

/-- The existence of a small exotic ℝ⁴, i.e. an open subset of ℝ⁴ that is homeomorphic but
not diffeomorphic to ℝ⁴. See https://en.wikipedia.org/wiki/Exotic_R4. -/
proof_wanted exists_open_nonempty_homeomorph_isEmpty_diffeomorph_euclideanSpace_four :
    ∃ M : TopologicalSpace.Opens ℝ⁴, Nonempty (M ≃ₜ ℝ⁴) ∧ IsEmpty (M ≃ₘ⟮𝓡 4, 𝓡 4⟯ ℝ⁴)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PoincareConjecture/Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PoincareConjecture/Variantb32a69d5e99e989a59df2f6a0f610d78c1b817e445adbeab4c51903cf43f6cae.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c72165d57ee78d9e1b84a5e145787a286b3d5395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
