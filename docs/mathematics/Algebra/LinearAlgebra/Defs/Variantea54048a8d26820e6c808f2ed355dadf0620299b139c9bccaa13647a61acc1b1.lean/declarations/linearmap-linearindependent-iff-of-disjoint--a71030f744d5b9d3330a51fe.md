# LinearMap.linearIndependent_iff_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ad83fbd-70b1-0aee-3230-496a1c6942fd",
  "kind": "theorem",
  "lexical_name": "LinearMap.linearIndependent_iff_of_disjoint",
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
  "slug": "linearmap-linearindependent-iff-of-disjoint--a71030f744d5b9d3330a51fe",
  "source": {
    "blob": "7a96d26391d1eb794315da06aa7fb32c9393be2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 716,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a71030f744d5b9d3330a51fe2f99549939f6f4bdda1bd14dacb575367c5bf378",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ad83fbd-70b1-0aee-3230-496a1c6942fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem LinearMap.linearIndependent_iff_of_disjoint (f : M →ₗ[R] M')
    (hf_inj : Disjoint (span R (Set.range v)) (LinearMap.ker f)) :
    LinearIndependent R (f ∘ v) ↔ LinearIndependent R v :=
  f.linearIndependent_iff_of_injOn <| LinearMap.injOn_of_disjoint_ker le_rfl hf_inj

section LinearIndepOn

/-! The following give equivalent versions of `LinearIndepOn` and its negation. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantea54048a8d26820e6c808f2ed355dadf0620299b139c9bccaa13647a61acc1b1.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a96d26391d1eb794315da06aa7fb32c9393be2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
