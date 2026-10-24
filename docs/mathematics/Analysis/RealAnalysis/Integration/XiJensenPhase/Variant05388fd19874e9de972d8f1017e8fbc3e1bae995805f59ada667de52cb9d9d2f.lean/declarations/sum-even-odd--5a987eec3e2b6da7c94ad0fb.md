# sum_even_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19d512eb-b7e0-ba04-0515-0c3c71e8d583",
  "kind": "lemma",
  "lexical_name": "sum_even_odd",
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
  "slug": "sum-even-odd--5a987eec3e2b6da7c94ad0fb",
  "source": {
    "blob": "b19e6c2b3bf77ea9c54304223d26bb243a1e87c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a987eec3e2b6da7c94ad0fb47fec118d56e74472dbdc42002b94add52611317",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d512eb-b7e0-ba04-0515-0c3c71e8d583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sum_even_odd (f : ℕ → ℂ) (n : ℕ) :
    ∑ j ∈ range (2 * n + 1), f j =
      (∑ k ∈ range (n + 1), f (2 * k)) + ∑ k ∈ range n, f (2 * k + 1) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [show 2 * (n + 1) + 1 = (2 * n + 1) + 1 + 1 by omega,
      sum_range_succ, sum_range_succ, ih]
    simp only [sum_range_succ, Nat.mul_add, Nat.mul_one]
    ring

/-- The two phase branches cancel exactly the odd binomial terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19e6c2b3bf77ea9c54304223d26bb243a1e87c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
