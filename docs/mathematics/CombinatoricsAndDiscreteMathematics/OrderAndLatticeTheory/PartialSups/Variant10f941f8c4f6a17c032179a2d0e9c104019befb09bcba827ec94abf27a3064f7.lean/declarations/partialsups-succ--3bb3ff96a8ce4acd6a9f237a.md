# partialSups_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45900813-df9a-2c22-9c6a-05b713e0d036",
  "kind": "theorem",
  "lexical_name": "partialSups_succ",
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
  "slug": "partialsups-succ--3bb3ff96a8ce4acd6a9f237a",
  "source": {
    "blob": "9d36474a07a4894bbc1103f7859af1a561420f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bb3ff96a8ce4acd6a9f237ac68c7a772099eceff9c99991df2481e591c1bde1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45900813-df9a-2c22-9c6a-05b713e0d036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialSups_succ [LinearOrder ι] [LocallyFiniteOrderBot ι] [SuccOrder ι]
    (f : ι → α) (i : ι) :
    partialSups f (Order.succ i) = partialSups f i ⊔ f (Order.succ i) := by
  suffices Iic (Order.succ i) = Iic i ∪ {Order.succ i} by simp only [partialSups_apply, this,
    sup'_union nonempty_Iic ⟨_, mem_singleton_self _⟩ f, sup'_singleton]
  ext
  simp only [mem_Iic, mem_union, mem_singleton]
  constructor
  · exact fun h ↦ (Order.le_succ_iff_eq_or_le.mp h).symm
  · exact fun h ↦ h.elim (le_trans · <| Order.le_succ _) le_of_eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant10f941f8c4f6a17c032179a2d0e9c104019befb09bcba827ec94abf27a3064f7.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d36474a07a4894bbc1103f7859af1a561420f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
