# mk'_toAddSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc31bd148812963a6e5ef82f8b22cb8cc216e1f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf4fc79b-a3ef-80d7-4ee6-52bd319e2b8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ccc3241-fbc7-64fe-2cb8-3e286a1f6a06",
  "kind": "theorem",
  "lexical_name": "mk'_toAddSubmonoid",
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
  "slug": "mk-toaddsubmonoid--891782020fc5c8824c4cb9a0",
  "source": {
    "blob": "dc31bd148812963a6e5ef82f8b22cb8cc216e1f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 187,
    "path": "GRWTSK/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891782020fc5c8824c4cb9a01f426917c97d325e9c75660787eb8bdfdd0d070b",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ccc3241-fbc7-64fe-2cb8-3e286a1f6a06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk'_toAddSubmonoid {s : Set R} {sg : Subsemigroup R} (hg : ↑sg = s) {sa : AddSubmonoid R}
    (ha : ↑sa = s) : (NonUnitalSubsemiring.mk' s sg hg sa ha).toAddSubmonoid = sa :=
  SetLike.coe_injective ha.symm

end NonUnitalSubsemiring

namespace NonUnitalSubsemiring

variable [NonUnitalNonAssocSemiring S]
variable {F : Type*} [FunLike F R S] [NonUnitalRingHomClass F R S] (s : NonUnitalSubsemiring R)

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc31bd148812963a6e5ef82f8b22cb8cc216e1f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
