# lie_eq_smul_of_mem_rootSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b77f46d4-59b1-2416-1084-e1ae1a1e80d6",
  "kind": "lemma",
  "lexical_name": "lie_eq_smul_of_mem_rootSpace",
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
  "slug": "lie-eq-smul-of-mem-rootspace--fdaab1a059fe4ca7c15bfe75",
  "source": {
    "blob": "b84f2960e5228ecba9f15c41b2b2f21dbb934aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 389,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdaab1a059fe4ca7c15bfe75919fa1c37db8bd2274ad20cbea16553974a75476",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b77f46d4-59b1-2416-1084-e1ae1a1e80d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_eq_smul_of_mem_rootSpace {α : H → K} {x : L} (hx : x ∈ rootSpace H α) (h : H) :
    ⁅h, x⁆ = α h • x := by
  replace hx : x ∈ (ad K L h).maxGenEigenspace (α h) :=
    genWeightSpace_le_genWeightSpaceOf L h α hx
  rw [(isSemisimple_ad_of_mem_isCartanSubalgebra
    h.property).isFinitelySemisimple.maxGenEigenspace_eq_eigenspace,
    Module.End.mem_eigenspace_iff] at hx
  simpa using hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84f2960e5228ecba9f15c41b2b2f21dbb934aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
