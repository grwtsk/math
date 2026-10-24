# _root_.GRWTSK.Algebra.LinearAlgebra.IsFredholm.Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.Function.Surjective.isFredholm_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5326ac1-206f-4749-1672-819efc3fc314",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsFredholm.Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.Function.Surjective.isFredholm_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-isfredholm-variantfd90c6bf222e0bbbad17--de3646facb690ff8641812ea",
  "source": {
    "blob": "ae1ab396b95aa2c356622d81c023ef6f6e264de1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 460,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de3646facb690ff8641812eabceb220138a0b7a78bad17a94438e0e687b9d0b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5326ac1-206f-4749-1672-819efc3fc314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.IsFredholm.Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.Function.Surjective.isFredholm_iff (f : E →L[𝕜] F) (f_surj : Surjective f) :
    IsFredholm f ↔ IsQuotientMap f ∧ f.ker.ClosedComplemented ∧ FiniteDimensional 𝕜 f.ker := by
  refine ⟨fun hf ↦ ⟨?_, hf.closedComplemented_ker, hf.finite_ker⟩,
    fun ⟨h_quot, h_comp, h_fin⟩ ↦ h_quot.isFredholm h_comp h_fin⟩
  simpa [isQuotientMap_iff_isStrictMap_surjective, f_surj] using hf.isStrictMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1ab396b95aa2c356622d81c023ef6f6e264de1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
