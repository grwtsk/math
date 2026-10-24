# directedAffineCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:286fa45265342e6995cdded684a53dc2fd877c51f0a49f6b60897e368eaba99d",
  "kind": "def",
  "lexical_name": "directedAffineCover",
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
  "slug": "directedaffinecover--d9ea7c469f0ae0a8bd30c51e",
  "source": {
    "blob": "bd4cfb063daa86c8271de6f6d6cff27ea478211b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 309,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9ea7c469f0ae0a8bd30c51e1cf38f4222e2e1f63c6f23b1cefaa8d0793252d2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:286fa45265342e6995cdded684a53dc2fd877c51f0a49f6b60897e368eaba99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directedAffineCover : X.OpenCover where
  I₀ := X.affineOpens
  X U := U
  f U := U.1.ι
  mem₀ := by
    rw [presieve₀_mem_precoverage_iff]
    refine ⟨fun x ↦ ?_, inferInstance⟩
    use ⟨(isBasis_iff_nbhd.mp X.isBasis_affineOpens (mem_top x)).choose,
      (isBasis_iff_nbhd.mp X.isBasis_affineOpens (mem_top x)).choose_spec.1⟩
    simpa using (isBasis_iff_nbhd.mp X.isBasis_affineOpens (mem_top x)).choose_spec.2.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd4cfb063daa86c8271de6f6d6cff27ea478211b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
