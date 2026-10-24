# _root_.GRWTSK.Algebra.LinearAlgebra.PositiveLinearMap.Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.OrderHomClass.ofLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24fd1dd8-f69b-dd59-68c7-4b901ba9e4e3",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.PositiveLinearMap.Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.OrderHomClass.ofLinear",
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
  "slug": "root-grwtsk-algebra-linearalgebra-positivelinearmap-variant05f1658f51d35--7293097ee06ec894d50ae4c0",
  "source": {
    "blob": "a90d773fc810f6ebc951e84d38d7730cd90cb755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7293097ee06ec894d50ae4c00f6e45bb2176288e00f3f88d23b1e431f93de47e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24fd1dd8-f69b-dd59-68c7-4b901ba9e4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.PositiveLinearMap.Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.OrderHomClass.ofLinear {F' E₁' E₂' : Type*} [FunLike F' E₁' E₂'] [AddCommGroup E₁']
    [PartialOrder E₁'] [AddCommGroup E₂'] [PartialOrder E₂'] [Module R E₁'] [Module R E₂']
    [LinearMapClass F' R E₁' E₂'] [IsOrderedAddMonoid E₁'] [IsOrderedAddMonoid E₂']
    (h : ∀ f : F', ∀ x, 0 ≤ x → 0 ≤ f x) : OrderHomClass F' E₁' E₂' where
  map_rel := by
    intro f a b hab
    rw [← sub_nonneg] at hab ⊢
    have : 0 ≤ f (b - a) := h f (b - a) hab
    simpa using this

end PositiveLinearMapClass

namespace PositiveLinearMap

section general

variable {R E₁ E₂ : Type*} [Semiring R]
  [AddCommMonoid E₁] [PartialOrder E₁] [AddCommMonoid E₂] [PartialOrder E₂]
  [Module R E₁] [Module R E₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90d773fc810f6ebc951e84d38d7730cd90cb755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
