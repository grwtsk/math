# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59570951a42b96735cee38471a68b528dcd564762c520755b6a340aadb57f436",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--766429611bc5eeb57bf2c72a",
  "source": {
    "blob": "d667b1dcd4ff055e2032c2213da26152b8fa22c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurability/Variant157e78c0887c235caa80714de03cf9d8ac72c90c889fab33c8ac21f89d1e2431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:766429611bc5eeb57bf2c72a39c6cefbe8c665147a08c6fac2452a117a749f95",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurability/Variant157e78c0887c235caa80714de03cf9d8ac72c90c889fab33c8ac21f89d1e2431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59570951a42b96735cee38471a68b528dcd564762c520755b6a340aadb57f436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {ι} [Encodable ι] {S₁ S₂ : ι → Set α} (hS₁ : ∀ i, MeasurableSet (S₁ i))
    (hS₂ : ∀ i, MeasurableSet (S₂ i)) : MeasurableSet (⋃ i, (S₁ i) ∪ (S₂ i)) := by measurability

end strong_measurability

/-- `ℝ` is a good test case because it verifies many assumptions, hence many lemmas apply and we
are more likely to detect a bad lemma. In a previous version of the tactic, `measurability` got
stuck trying to apply `Set.Finite.MeasurableSet` here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurability/Variant157e78c0887c235caa80714de03cf9d8ac72c90c889fab33c8ac21f89d1e2431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurability/Variant157e78c0887c235caa80714de03cf9d8ac72c90c889fab33c8ac21f89d1e2431.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d667b1dcd4ff055e2032c2213da26152b8fa22c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
