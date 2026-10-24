# lowerClosure_infs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56b3cc39-be08-a223-216c-cacd7c59e8cd",
  "kind": "theorem",
  "lexical_name": "lowerClosure_infs",
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
  "slug": "lowerclosure-infs--4c863b020ee3e9aeab19f692",
  "source": {
    "blob": "1fb688ec41ed6baa148977a9c32fffedf53d40fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 418,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c863b020ee3e9aeab19f69209e9271f7f1766ee41b4d0e3b94a045b63b9b25f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b3cc39-be08-a223-216c-cacd7c59e8cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerClosure_infs [SemilatticeInf α] (s t : Set α) :
    lowerClosure (s ⊼ t) = lowerClosure s ⊓ lowerClosure t := by
  ext a
  simp only [SetLike.mem_coe, mem_lowerClosure, Set.mem_infs, exists_and_left, exists_prop,
    LowerSet.coe_sup, Set.mem_inter_iff]
  constructor
  · rintro ⟨_, ⟨b, hb, c, hc, rfl⟩, ha⟩
    exact ⟨⟨b, hb, ha.trans inf_le_left⟩, c, hc, ha.trans inf_le_right⟩
  · rintro ⟨⟨b, hb, hab⟩, c, hc, hac⟩
    exact ⟨_, ⟨b, hb, c, hc, rfl⟩, le_inf hab hac⟩
#align lower_closure_infs lowerClosure_infs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb688ec41ed6baa148977a9c32fffedf53d40fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
