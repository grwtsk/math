# hasProd_one_iff_of_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47592d06-6360-6e7b-bd45-0fe065bfa5c3",
  "kind": "theorem",
  "lexical_name": "hasProd_one_iff_of_one_le",
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
  "slug": "hasprod-one-iff-of-one-le--adf589655dca827b553d658c",
  "source": {
    "blob": "c4dfa304641f5612d334846c467abe38ac68521e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf589655dca827b553d658ca0951e3afd924378ef2db48a1afaee9baf580620",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47592d06-6360-6e7b-bd45-0fe065bfa5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProd_one_iff_of_one_le {ι α : Type*} {L : SummationFilter ι} [CommMonoid α]
  [PartialOrder α] [IsOrderedMonoid α] [TopologicalSpace α] [OrderClosedTopology α]
  {f : ι → α} [L.LeAtTop] [L.NeBot] (hf : ∀ i, 1 ≤ f i) :
    HasProd f 1 L ↔ f = 1 := by
  refine ⟨fun hf' ↦ ?_, ?_⟩
  · ext i
    exact (hf i).antisymm' (le_hasProd hf' _ fun j _ ↦ hf j)
  · rintro rfl
    exact hasProd_one

end OrderedCommMonoid

section OrderedCommGroup

variable [CommGroup α] [PartialOrder α] [IsOrderedMonoid α]
  [TopologicalSpace α] [IsTopologicalGroup α]
  [OrderClosedTopology α] {f g : ι → α} {a₁ a₂ : α} {i : ι}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4dfa304641f5612d334846c467abe38ac68521e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
