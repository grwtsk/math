# iSupIndep.dfinsupp_lsum_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bcc814745c5cb0e29c55623626bb5cdd1553bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d87a782-ae5d-b3ab-7416-454eda790201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7eded6ca-626f-76e1-01eb-b05f8d1ddb93",
  "kind": "theorem",
  "lexical_name": "iSupIndep.dfinsupp_lsum_injective",
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
  "slug": "isupindep-dfinsupp-lsum-injective--a370be0e7616f68526b9a532",
  "source": {
    "blob": "0bcc814745c5cb0e29c55623626bb5cdd1553bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 529,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a370be0e7616f68526b9a532fd547d5e07465f938fa5081ca76a6e6f60a9542c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eded6ca-626f-76e1-01eb-b05f8d1ddb93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupIndep.dfinsupp_lsum_injective {p : ι → Submodule R N} (h : iSupIndep p) :
    Function.Injective (lsum ℕ fun i => (p i).subtype) := by
  -- simplify everything down to binders over equalities in `N`
  rw [iSupIndep_iff_forall_dfinsupp] at h
  suffices LinearMap.ker (lsum ℕ fun i => (p i).subtype) = ⊥ by
    -- Lean can't find this without our help
    letI thisI : AddCommGroup (Π₀ i, p i) := inferInstance
    rw [LinearMap.ker_eq_bot] at this
    exact this
  rw [LinearMap.ker_eq_bot']
  intro m hm
  ext i : 1
  -- split `m` into the piece at `i` and the pieces elsewhere, to match `h`
  rw [DFinsupp.zero_apply, ← neg_eq_zero]
  refine h i (-m i) m ?_
  rwa [← erase_add_single i m, LinearMap.map_add, lsum_single, Submodule.subtype_apply,
    add_eq_zero_iff_eq_neg, ← Submodule.coe_neg] at hm

@[deprecated (since := "2024-11-24")]
alias Independent.dfinsupp_lsum_injective := iSupIndep.dfinsupp_lsum_injective

/-- The canonical map out of a direct sum of a family of additive subgroups is injective when the
additive subgroups are `iSupIndep`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bcc814745c5cb0e29c55623626bb5cdd1553bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
