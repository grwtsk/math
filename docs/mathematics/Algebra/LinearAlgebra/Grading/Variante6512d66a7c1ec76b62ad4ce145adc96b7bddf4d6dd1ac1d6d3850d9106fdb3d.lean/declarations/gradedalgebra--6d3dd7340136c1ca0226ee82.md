# GradedAlgebra.ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:792698583571222af743287d537d0bbcd16e09d79977347a5a7f1a064fd8a047",
  "kind": "def",
  "lexical_name": "GradedAlgebra.ι",
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
  "slug": "gradedalgebra--6d3dd7340136c1ca0226ee82",
  "source": {
    "blob": "cf2f4dee0afe2b682c1501fbe9ca9c1d1eba932e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d3dd7340136c1ca0226ee82cd120246cd6d8d7c7ac8411da63c3c60d83bd456",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:792698583571222af743287d537d0bbcd16e09d79977347a5a7f1a064fd8a047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def GradedAlgebra.ι : M →ₗ[R] ⨁ i : ℕ, ↥(LinearMap.range (ι R : M →ₗ[_] _) ^ i) :=
  DirectSum.lof R ℕ (fun i => ↥(LinearMap.range (ι R : M →ₗ[_] _) ^ i)) 1 ∘ₗ
    (ι R).codRestrict _ fun m => by simpa only [pow_one] using LinearMap.mem_range_self _ m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variante6512d66a7c1ec76b62ad4ce145adc96b7bddf4d6dd1ac1d6d3850d9106fdb3d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf2f4dee0afe2b682c1501fbe9ca9c1d1eba932e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
