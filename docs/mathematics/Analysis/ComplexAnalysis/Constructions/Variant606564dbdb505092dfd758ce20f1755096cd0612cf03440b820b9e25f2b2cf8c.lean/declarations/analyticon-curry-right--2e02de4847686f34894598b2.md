# AnalyticOn.curry_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69b93e76-7310-5d99-b654-0f7281138197",
  "kind": "theorem",
  "lexical_name": "AnalyticOn.curry_right",
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
  "slug": "analyticon-curry-right--2e02de4847686f34894598b2",
  "source": {
    "blob": "49a32e96cf6d663000d818eb9ff3a34cdbd376b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 439,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant606564dbdb505092dfd758ce20f1755096cd0612cf03440b820b9e25f2b2cf8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e02de4847686f34894598b202a0436f29c6efac7a0171b8c3fc089eac64ff3f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Variant606564dbdb505092dfd758ce20f1755096cd0612cf03440b820b9e25f2b2cf8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69b93e76-7310-5d99-b654-0f7281138197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOn.curry_right
    {f : E × F → G} {x : E} {s : Set (E × F)} (fa : AnalyticOn 𝕜 f s) :
    AnalyticOn 𝕜 (fun y ↦ f (x, y)) {y | (x, y) ∈ s} :=
  fun y m ↦ (fa (x, y) m).curry_right

/-!
### Analyticity in Pi spaces

In this section, `f : Π i, E → Fm i` is a family of functions, i.e., each `f i` is a function,
from `E` to a space `Fm i`. We discuss whether the family as a whole is analytic as a function
of `x : E`, i.e., whether `x ↦ (f 1 x, ..., f n x)` is analytic from `E` to the product space
`Π i, Fm i`. This function is denoted either by `fun x ↦ (fun i ↦ f i x)`, or `fun x i ↦ f i x`,
or `fun x ↦ (f ⬝ x)`. We use the latter spelling in the statements, for readability purposes.
-/

section

variable {ι : Type*} [Fintype ι] {e : E} {Fm : ι → Type*}
    [∀ i, NormedAddCommGroup (Fm i)] [∀ i, NormedSpace 𝕜 (Fm i)]
    {f : Π i, E → Fm i} {s : Set E} {r : ℝ≥0∞}
    {p : Π i, FormalMultilinearSeries 𝕜 E (Fm i)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Variant606564dbdb505092dfd758ce20f1755096cd0612cf03440b820b9e25f2b2cf8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant606564dbdb505092dfd758ce20f1755096cd0612cf03440b820b9e25f2b2cf8c.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a32e96cf6d663000d818eb9ff3a34cdbd376b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
