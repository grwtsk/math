# exists_continuous_zero_one_of_isCompact'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c9eff0a-dbd3-f8ad-3890-dac5c5115134",
  "kind": "theorem",
  "lexical_name": "exists_continuous_zero_one_of_isCompact'",
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
  "slug": "exists-continuous-zero-one-of-iscompact--2767738e7783f3b765e2d72e",
  "source": {
    "blob": "5550385f05c93e4c5a9b2f832ec6c74f675d6e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2767738e7783f3b765e2d72eab1dc06b44603f249d9dfeb07fdb63b4f4718aa8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c9eff0a-dbd3-f8ad-3890-dac5c5115134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_zero_one_of_isCompact' [RegularSpace X] [LocallyCompactSpace X]
    {s t : Set X} (hs : IsCompact s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : C(X, ℝ), EqOn f 0 t ∧ EqOn f 1 s ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
  obtain ⟨g, hgs, hgt, (hicc : ∀ x, 0 ≤ g x ∧ g x ≤ 1)⟩ := exists_continuous_zero_one_of_isCompact
    hs ht hd
  use 1 - g
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    simp only [ContinuousMap.sub_apply, ContinuousMap.one_apply, Pi.zero_apply]
    exact sub_eq_zero_of_eq (id (EqOn.symm hgt) hx)
  · intro x hx
    simp only [ContinuousMap.sub_apply, ContinuousMap.one_apply, Pi.one_apply, sub_eq_self]
    exact hgs hx
  · intro x
    simpa [and_comm] using hicc x

/-- Urysohn's lemma: if `s` and `t` are two disjoint sets in a regular locally compact topological
space `X`, with `s` compact and `t` closed, then there exists a continuous compactly supported
function `f : X → ℝ` such that

* `f` equals one on `s`;
* `f` equals zero on `t`;
* `0 ≤ f x ≤ 1` for all `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5550385f05c93e4c5a9b2f832ec6c74f675d6e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
