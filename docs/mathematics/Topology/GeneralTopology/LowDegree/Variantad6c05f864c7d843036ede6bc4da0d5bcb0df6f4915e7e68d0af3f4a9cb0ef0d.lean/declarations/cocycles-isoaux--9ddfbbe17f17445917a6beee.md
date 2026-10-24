# cocycles₀IsoAux'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa2020e2156f3ada0708fa5152f5696d1dd4b571",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:911ef7f7-17da-5f2f-e4df-09d1ca3059b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0063ca43-3283-4302-da9d-67c43446bdeb",
  "kind": "lemma",
  "lexical_name": "cocycles₀IsoAux'",
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
  "slug": "cocycles-isoaux--9ddfbbe17f17445917a6beee",
  "source": {
    "blob": "aa2020e2156f3ada0708fa5152f5696d1dd4b571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ddfbbe17f17445917a6beee44f9ba594f81a9e5bb8ead4fd986d9dddc39c1c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0063ca43-3283-4302-da9d-67c43446bdeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cocycles₀IsoAux' (x : X) (h : ContinuousMap.const G x ∈ ((resolution' X).X 0).ρ.invariants) :
    ⟨ContinuousMap.const G x, h⟩ ∈ ((homogeneousCochains X).d 0 1).hom.ker := by
  rw [LinearMap.mem_ker, Subtype.ext_iff, ContinuousLinearMap.coe_coe,
    homogeneousCochains.d_apply]
  simp [d_succ, hom_sub, ContIntertwiningMap.sub_apply, d_zero]

/-- The isomorphism between the zeroth cocycles and the kernel of the zeroth differential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa2020e2156f3ada0708fa5152f5696d1dd4b571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
