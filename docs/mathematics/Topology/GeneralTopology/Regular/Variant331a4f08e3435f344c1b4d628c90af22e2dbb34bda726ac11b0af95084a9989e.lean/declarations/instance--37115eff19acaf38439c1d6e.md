# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7a7e6808e6a33b3f92a7d064be436d8e509d0fb215458d128e19578810a29b0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--37115eff19acaf38439c1d6e",
  "source": {
    "blob": "c1e2d4a00dc1abbada13049b6276cb7f3bfb6445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 509,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37115eff19acaf38439c1d6eb15319c0cb60ab9431def0eb400747e9684f9e9c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7a7e6808e6a33b3f92a7d064be436d8e509d0fb215458d128e19578810a29b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [NormalSpace X] : NormalSpace (SeparationQuotient X) where
  normal s t hs ht hd := separatedNhds_iff_disjoint.2 <| by
    rw [← disjoint_comap_iff surjective_mk, comap_mk_nhdsSet, comap_mk_nhdsSet]
    exact disjoint_nhdsSet_nhdsSet (hs.preimage continuous_mk) (ht.preimage continuous_mk)
      (hd.preimage mk)

end SeparationQuotient

variable (X)

end Normality

section CompletelyNormal

/-- A topological space `X` is a *completely normal space* provided that for any two sets `s`, `t`
such that if both `closure s` is disjoint with `t`, and `s` is disjoint with `closure t`,
then there exist disjoint neighbourhoods of `s` and `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e2d4a00dc1abbada13049b6276cb7f3bfb6445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
