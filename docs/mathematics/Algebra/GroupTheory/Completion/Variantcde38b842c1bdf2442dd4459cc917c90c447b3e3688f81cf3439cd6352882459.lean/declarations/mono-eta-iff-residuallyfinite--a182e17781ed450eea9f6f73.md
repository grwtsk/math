# mono_eta_iff_residuallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3de3924839e882e77c302a4cfa0a58223bb80e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b13b14d-bf85-27e1-ec2f-5ed048b90114",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e594a0f4-a5fa-0473-910f-5d821229ac56",
  "kind": "theorem",
  "lexical_name": "mono_eta_iff_residuallyFinite",
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
  "slug": "mono-eta-iff-residuallyfinite--a182e17781ed450eea9f6f73",
  "source": {
    "blob": "3de3924839e882e77c302a4cfa0a58223bb80e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a182e17781ed450eea9f6f732c1dc6012e4dece591b2d0d35cb1ffcc77f211f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e594a0f4-a5fa-0473-910f-5d821229ac56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_eta_iff_residuallyFinite : Mono (eta G) ↔ Group.ResiduallyFinite G := by
  rw [GrpCat.mono_iff_injective, injective_iff_map_eq_one,
    Group.residuallyFinite_iff_forall_finiteIndexNormalSubgroup]
  refine forall_congr' fun g ↦ imp_congr_left ?_
  rw [Subtype.ext_iff, funext_iff]
  exact forall_congr' fun H ↦ QuotientGroup.eq_one_iff g

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Completion/Variantcde38b842c1bdf2442dd4459cc917c90c447b3e3688f81cf3439cd6352882459.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de3924839e882e77c302a4cfa0a58223bb80e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
