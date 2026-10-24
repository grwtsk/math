# rank_le_of_isSMulRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0569f971-c78e-bc2b-1bda-0007d2da5af8",
  "kind": "lemma",
  "lexical_name": "rank_le_of_isSMulRegular",
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
  "slug": "rank-le-of-issmulregular--ddd261816edeb6bf4ddda7f3",
  "source": {
    "blob": "e38775b9c8be724f0f1648a8e810e107c7356d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 475,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddd261816edeb6bf4ddda7f3ad0f9c928dbd7ca5bc2c2ab5f11fc15501efadbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0569f971-c78e-bc2b-1bda-0007d2da5af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_le_of_isSMulRegular {S : Type*} [CommSemiring S] [Algebra S R] [Module S M]
    [IsScalarTower S R M] (L L' : Submodule R M) {s : S} (hr : IsSMulRegular M s)
    (h : ∀ x ∈ L, s • x ∈ L') :
    Module.rank R L ≤ Module.rank R L' :=
  ((Algebra.lsmul S R M s).restrict h).rank_le_of_injective <|
    fun _ _ h ↦ by simpa using hr (Subtype.ext_iff.mp h)

variable (R R' M) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38775b9c8be724f0f1648a8e810e107c7356d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
