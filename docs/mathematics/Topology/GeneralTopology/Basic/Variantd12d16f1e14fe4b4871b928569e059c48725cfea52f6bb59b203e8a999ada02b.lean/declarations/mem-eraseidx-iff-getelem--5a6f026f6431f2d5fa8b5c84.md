# mem_eraseIdx_iff_getElem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a42f4833-d1d3-0ff6-dc92-6b8880c939ce",
  "kind": "theorem",
  "lexical_name": "mem_eraseIdx_iff_getElem?",
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
  "slug": "mem-eraseidx-iff-getelem--5a6f026f6431f2d5fa8b5c84",
  "source": {
    "blob": "6ab7e532c8e9810318816e7f88e93a32438a6b6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a6f026f6431f2d5fa8b5c84420553ea1f7d9f3426bafc28b68ecc81c87db15a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a42f4833-d1d3-0ff6-dc92-6b8880c939ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_eraseIdx_iff_getElem? {x : α} {l} {k} : x ∈ eraseIdx l k ↔ ∃ i ≠ k, l[i]? = some x := by
  simp only [mem_eraseIdx_iff_getElem, getElem_eq_iff, exists_and_left]
  refine exists_congr fun i => and_congr_right' ?_
  constructor
  · rintro ⟨_, h⟩; exact h
  · rintro h;
    obtain ⟨h', -⟩ := getElem?_eq_some_iff.1 h
    exact ⟨h', h⟩

/-! ### min? -/

-- A specialization of `min?_eq_some_iff` to Nat.
@[deprecated min?_eq_some_iff (since := "2025-08-08")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab7e532c8e9810318816e7f88e93a32438a6b6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
