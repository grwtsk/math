# isNilpotent_restrict_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceec4d0ccfc26f414e5144000df75aa66378f837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:177d1e06-3ee6-2e5f-55b6-f7d9bea0548b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2830acba-0e58-72be-dcfd-df0a4837666c",
  "kind": "lemma",
  "lexical_name": "isNilpotent_restrict_of_le",
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
  "slug": "isnilpotent-restrict-of-le--f8accc68f5d8ed1f0dd96afc",
  "source": {
    "blob": "ceec4d0ccfc26f414e5144000df75aa66378f837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8accc68f5d8ed1f0dd96afcf892f00e5e80d583e2a883e7808af52abc830bc8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2830acba-0e58-72be-dcfd-df0a4837666c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_restrict_of_le {f : End R M} {p q : Submodule R M}
    {hp : MapsTo f p p} {hq : MapsTo f q q} (h : p ≤ q) (hf : IsNilpotent (f.restrict hq)) :
    IsNilpotent (f.restrict hp) := by
  obtain ⟨n, hn⟩ := hf
  use n
  ext ⟨x, hx⟩
  replace hn := DFunLike.congr_fun hn ⟨x, h hx⟩
  simp_rw [LinearMap.zero_apply, ZeroMemClass.coe_zero, ZeroMemClass.coe_eq_zero] at hn ⊢
  rw [Module.End.pow_restrict, LinearMap.restrict_apply] at hn ⊢
  ext
  exact (congr_arg Subtype.val hn :)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceec4d0ccfc26f414e5144000df75aa66378f837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
