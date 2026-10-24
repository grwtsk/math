# HasBasis.disjoint_iff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df5ca680-fb7f-936f-62fa-4e57d5a2d6ab",
  "kind": "theorem",
  "lexical_name": "HasBasis.disjoint_iff_left",
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
  "slug": "hasbasis-disjoint-iff-left--911e600d792d4e1414562a6e",
  "source": {
    "blob": "31f2f982ee30436c03d242b91f27527f81280c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 733,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:911e600d792d4e1414562a6e5566d1c4df55508737a8bd9f1e9d640ef68f07fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df5ca680-fb7f-936f-62fa-4e57d5a2d6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.disjoint_iff_left (h : l.HasBasis p s) :
    Disjoint l l' ↔ ∃ i, p i ∧ (s i)ᶜ ∈ l' := by
  simp only [h.disjoint_iff l'.basis_sets, id, ← disjoint_principal_left,
    (hasBasis_principal _).disjoint_iff l'.basis_sets, true_and, Unique.exists_iff]
#align filter.has_basis.disjoint_iff_left Filter.HasBasis.disjoint_iff_leftₓ

-- porting note: use `∃ i, p i ∧ _` instead of `∃ i (hi : p i), _`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f2f982ee30436c03d242b91f27527f81280c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
