# prod_div_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea8c0a81-4b41-2970-751a-db980d0af85f",
  "kind": "theorem",
  "lexical_name": "prod_div_divisors",
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
  "slug": "prod-div-divisors--ea5d996340406d8f43e45a5d",
  "source": {
    "blob": "d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 559,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea5d996340406d8f43e45a5df9974a22f467212be49d527993633e8f7789b8dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8c0a81-4b41-2970-751a-db980d0af85f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_div_divisors {α : Type*} [CommMonoid α] (n : ℕ) (f : ℕ → α) :
    (∏ d ∈ n.divisors, f (n / d)) = n.divisors.prod f := by
  by_cases hn : n = 0; · simp [hn]
  rw [← prod_image]
  · exact prod_congr (image_div_divisors_eq_divisors n) (by simp)
  · intro x hx y hy h
    rw [mem_coe, mem_divisors] at hx hy
    exact (div_eq_iff_eq_of_dvd_dvd hn hx.1 hy.1).mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
