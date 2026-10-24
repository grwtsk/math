# lcRow0Extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d488a7c098126c08b2ff100bbb29ee3a2370d65b36daed900a47fd78f2b1c221",
  "kind": "def",
  "lexical_name": "lcRow0Extend",
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
  "slug": "lcrow0extend--7341dab5456e57f17b3642ef",
  "source": {
    "blob": "11af827f4bf5f7597004c39e36c8528150e8111d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7341dab5456e57f17b3642efb51d01a9498f8ae02bbb031d0c7c0a31c7eeae3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d488a7c098126c08b2ff100bbb29ee3a2370d65b36daed900a47fd78f2b1c221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lcRow0Extend {cd : Fin 2 → ℤ} (hcd : IsCoprime (cd 0) (cd 1)) :
    Matrix (Fin 2) (Fin 2) ℝ ≃ₗ[ℝ] Matrix (Fin 2) (Fin 2) ℝ :=
  LinearEquiv.piCongrRight
    ![by
      refine
        LinearMap.GeneralLinearGroup.generalLinearEquiv ℝ (Fin 2 → ℝ)
          (GeneralLinearGroup.toLin (planeConformalMatrix (cd 0 : ℝ) (-(cd 1 : ℝ)) ?_))
      norm_cast
      rw [neg_sq]
      exact hcd.sq_add_sq_ne_zero, LinearEquiv.refl ℝ (Fin 2 → ℝ)]

/-- The map `lcRow0` is proper, that is, preimages of cocompact sets are finite in
`[[* , *], [c, d]]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11af827f4bf5f7597004c39e36c8528150e8111d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
