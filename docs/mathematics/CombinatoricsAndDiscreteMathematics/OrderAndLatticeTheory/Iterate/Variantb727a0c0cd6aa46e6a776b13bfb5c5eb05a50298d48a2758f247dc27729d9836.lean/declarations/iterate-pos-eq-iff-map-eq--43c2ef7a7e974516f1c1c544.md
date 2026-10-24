# iterate_pos_eq_iff_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52390757-4c40-7f2e-2527-24203b23f6bf",
  "kind": "theorem",
  "lexical_name": "iterate_pos_eq_iff_map_eq",
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
  "slug": "iterate-pos-eq-iff-map-eq--43c2ef7a7e974516f1c1c544",
  "source": {
    "blob": "779f1f6ef543a84bb87d559f98472dfdf5627450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c2ef7a7e974516f1c1c5447183919977509fc9ec7f89a6ac93246f97c64d12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52390757-4c40-7f2e-2527-24203b23f6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_pos_eq_iff_map_eq (h : Commute f g) (hf : Monotone f) (hg : StrictMono g) {x n}
    (hn : 0 < n) : f^[n] x = g^[n] x ↔ f x = g x := by
  simp only [le_antisymm_iff, h.iterate_pos_le_iff_map_le hf hg hn,
    h.symm.iterate_pos_le_iff_map_le' hg hf hn]

end Commute

end Function

namespace Monotone

variable {α : Type*} [Preorder α] {f : α → α} {x : α}

/-- If `f` is a monotone map and `x ≤ f x` at some point `x`, then the iterates `f^[n] x` form
a monotone sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779f1f6ef543a84bb87d559f98472dfdf5627450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
