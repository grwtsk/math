# numerator_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c76f165b308c93d818634f84fa2d3431f9d9ee47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81c3a620-30a1-0414-9ae2-6a3912da8c59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0532feeb-6a8b-b22d-48df-df5610086a69",
  "kind": "theorem",
  "lexical_name": "numerator_reverse",
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
  "slug": "numerator-reverse--8bfb68cc93aa1c0fbdebaeca",
  "source": {
    "blob": "c76f165b308c93d818634f84fa2d3431f9d9ee47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfb68cc93aa1c0fbdebaeca30d3142d64b43bd7ae224420f2ea453eb8a5f13a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0532feeb-6a8b-b22d-48df-df5610086a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem numerator_reverse (S : RationalSegment E n) (t : UnitInterval) :
    S.reverse.numerator t = S.numerator (reflect t) := by
  unfold numerator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (n + 1)))
    (fun i => (S.reverse.weight i * bernstein n i t) • S.reverse.point i)
    (fun i => (S.weight i * bernstein n i (reflect t)) • S.point i)
  intro i
  simp only [reverse_weight, reverse_point, Fin.revPerm_apply]
  congr 2
  simpa using bernstein_rev n i.rev t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76f165b308c93d818634f84fa2d3431f9d9ee47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
