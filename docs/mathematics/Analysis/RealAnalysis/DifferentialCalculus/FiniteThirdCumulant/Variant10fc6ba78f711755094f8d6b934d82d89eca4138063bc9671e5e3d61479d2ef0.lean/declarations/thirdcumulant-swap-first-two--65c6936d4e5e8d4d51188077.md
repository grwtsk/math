# thirdCumulant_swap_first_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf8b544a-92d8-4404-8c45-d71c9826d124",
  "kind": "theorem",
  "lexical_name": "thirdCumulant_swap_first_two",
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
  "slug": "thirdcumulant-swap-first-two--65c6936d4e5e8d4d51188077",
  "source": {
    "blob": "53d5613f360c78d8b29f600342329d2f3e9dbc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c6936d4e5e8d4d51188077e07e8c9fc0abf5de5668ea35324fc6834de04a3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8b544a-92d8-4404-8c45-d71c9826d124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thirdCumulant_swap_first_two
    (theta u v w : E) :
    F.thirdCumulantOperator theta u v w =
      F.thirdCumulantOperator theta v u w := by
  rw [F.thirdCumulantOperator_apply,
    F.thirdCumulantOperator_apply]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- The third cumulant is symmetric in its last two arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant10fc6ba78f711755094f8d6b934d82d89eca4138063bc9671e5e3d61479d2ef0.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d5613f360c78d8b29f600342329d2f3e9dbc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
