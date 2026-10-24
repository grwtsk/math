# _root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlternatingMap.Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.ContinuousLinearMap.compContinuousAlternatingMapₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42ed0012d300f3b1e278226dac7924f43f5d6a0a6170756589fe55f532659eac",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlternatingMap.Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.ContinuousLinearMap.compContinuousAlternatingMapₗ",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-continuousalternatingmap-variant--1c3cc8ec24053c7a80907c8b",
  "source": {
    "blob": "6059bd0ee17451999109f265eef7964b8b21631b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 629,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c3cc8ec24053c7a80907c8b70b4be154d5ce085df47ba8e61e43a2331c90214",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42ed0012d300f3b1e278226dac7924f43f5d6a0a6170756589fe55f532659eac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlternatingMap.Variantd18533712c133ac8423684cd7bef9a149bdd492422edf96e67ddcc3c49d904d0.ContinuousLinearMap.compContinuousAlternatingMapₗ :
    (N →L[R] N') →ₗ[R] (M [⋀^ι]→L[R] N) →ₗ[R] (M [⋀^ι]→L[R] N') :=
  LinearMap.mk₂ R ContinuousLinearMap.compContinuousAlternatingMap (fun _ _ _ => rfl)
    (fun _ _ _ => rfl) (fun f g₁ g₂ => by ext1; apply f.map_add) fun c f g => by ext1; simp

end Semiring

end ContinuousAlternatingMap

namespace ContinuousMultilinearMap

variable {R M N ι : Type*} [Semiring R] [AddCommMonoid M] [Module R M] [TopologicalSpace M]
  [AddCommGroup N] [Module R N] [TopologicalSpace N] [IsTopologicalAddGroup N] [Fintype ι]
  [DecidableEq ι] (f : ContinuousMultilinearMap R (fun _ : ι => M) N)

/-- Alternatization of a continuous multilinear map. -/
@[simps -isSimp apply_toContinuousMultilinearMap]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6059bd0ee17451999109f265eef7964b8b21631b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
