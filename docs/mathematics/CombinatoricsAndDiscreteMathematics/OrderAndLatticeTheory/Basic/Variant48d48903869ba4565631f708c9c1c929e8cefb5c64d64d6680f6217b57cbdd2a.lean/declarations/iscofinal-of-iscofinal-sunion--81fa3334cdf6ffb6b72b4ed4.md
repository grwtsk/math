# isCofinal_of_isCofinal_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ae2be7f-18da-51ee-98db-4fc0dcff416b",
  "kind": "theorem",
  "lexical_name": "isCofinal_of_isCofinal_sUnion",
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
  "slug": "iscofinal-of-iscofinal-sunion--81fa3334cdf6ffb6b72b4ed4",
  "source": {
    "blob": "f4a7d2d4bb664a2d15881ff88e99bfa33be10027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81fa3334cdf6ffb6b72b4ed48e6a691fe407f40777b5bda123c4bfb3c7062e8a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ae2be7f-18da-51ee-98db-4fc0dcff416b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCofinal_of_isCofinal_sUnion {α : Type*} [LinearOrder α] {s : Set (Set α)}
    (h₁ : IsCofinal (⋃₀ s)) (h₂ : #s < Order.cof α) : ∃ x ∈ s, IsCofinal x := by
  contrapose! h₂
  simp_rw [not_isCofinal_iff] at h₂
  choose f hf using h₂
  refine (cof_le (s := range fun x ↦ f x.1 x.2) fun a ↦ ?_).trans mk_range_le
  obtain ⟨b, ⟨t, ht, hb⟩, hab⟩ := h₁ a
  simpa using ⟨t, ht, hab.trans (hf t ht b hb).le⟩

/-- If the union of the `ι`-indexed family `s` is cofinal and `ι` is smaller than the cofinality,
then `s` has a cofinal member. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a7d2d4bb664a2d15881ff88e99bfa33be10027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
