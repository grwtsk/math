# strictConcaveOn_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db932f34-57e5-3732-9736-388a9dce87d3",
  "kind": "lemma",
  "lexical_name": "strictConcaveOn_sqrt",
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
  "slug": "strictconcaveon-sqrt--731ad10727f5b01da6ede6cb",
  "source": {
    "blob": "e4a67a5e7f3b5c6b3f7d4823765f6fe666431b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:731ad10727f5b01da6ede6cbb4fc16696aaa4f7ff72c30e7c38a2ce92e8cc750",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db932f34-57e5-3732-9736-388a9dce87d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictConcaveOn_sqrt : StrictConcaveOn ℝ≥0 univ NNReal.sqrt := by
  have : NNReal.sqrt = fun x : ℝ≥0 ↦ x ^ (1 / (2 : ℝ)) := by
    ext x; exact mod_cast NNReal.sqrt_eq_rpow x
  rw [this]
  exact strictConcaveOn_rpow (by positivity) (by linarith)

end NNReal

namespace Real

open NNReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant6bc16a41243b0efd32511dcaf5f63a79689c2ce022ce2c9d4a7ea8601f1f3800.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a67a5e7f3b5c6b3f7d4823765f6fe666431b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
