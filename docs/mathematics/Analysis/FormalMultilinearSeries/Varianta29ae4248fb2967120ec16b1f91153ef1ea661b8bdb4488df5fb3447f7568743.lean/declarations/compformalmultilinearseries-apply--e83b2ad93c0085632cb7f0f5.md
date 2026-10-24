# compFormalMultilinearSeries_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a99e508-33c5-c79a-4205-b62d326ef187",
  "kind": "theorem",
  "lexical_name": "compFormalMultilinearSeries_apply'",
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
  "slug": "compformalmultilinearseries-apply--e83b2ad93c0085632cb7f0f5",
  "source": {
    "blob": "755d41859fea7f1bae103aaed3c64b99a75a43d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 227,
    "path": "GRWTSK/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e83b2ad93c0085632cb7f0f5422b9d10468370daea56029b83d751fd9c09694d",
  "verification": {
    "reference": "docs/verification/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a99e508-33c5-c79a-4205-b62d326ef187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compFormalMultilinearSeries_apply' (f : F →L[𝕜] G) (p : FormalMultilinearSeries 𝕜 E F)
    (n : ℕ) (v : Fin n → E) : (f.compFormalMultilinearSeries p) n v = f (p n v) :=
  rfl

end ContinuousLinearMap

namespace ContinuousMultilinearMap

variable {ι : Type*} {E : ι → Type*} [∀ i, AddCommGroup (E i)] [∀ i, Module 𝕜 (E i)]
  [∀ i, TopologicalSpace (E i)] [∀ i, IsTopologicalAddGroup (E i)]
  [∀ i, ContinuousConstSMul 𝕜 (E i)] [Fintype ι] (f : ContinuousMultilinearMap 𝕜 E F)

/-- Realize a ContinuousMultilinearMap on `∀ i : ι, E i` as the evaluation of a
FormalMultilinearSeries by choosing an arbitrary identification `ι ≃ Fin (Fintype.card ι)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `755d41859fea7f1bae103aaed3c64b99a75a43d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
