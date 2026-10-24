# denominator_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08bc34d0-5380-55d9-dd63-50a78055a07f",
  "kind": "theorem",
  "lexical_name": "denominator_reverse",
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
  "slug": "denominator-reverse--62181a12984d9c99dc02283e",
  "source": {
    "blob": "40aac8fa9ff8c4956ca8bedd4020a7276200388e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62181a12984d9c99dc02283e5ed83ea0cfac5baa0098f980ffdb970dff3c1dd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08bc34d0-5380-55d9-dd63-50a78055a07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denominator_reverse (S : RationalSegment E n) (t : UnitInterval) :
    S.reverse.denominator t = S.denominator (reflect t) := by
  unfold denominator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (n + 1)))
    (fun i => S.reverse.weight i * bernstein n i t)
    (fun i => S.weight i * bernstein n i (reflect t))
  intro i
  simp only [reverse_weight, Fin.revPerm_apply]
  congr 1
  simpa using bernstein_rev n i.rev t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40aac8fa9ff8c4956ca8bedd4020a7276200388e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
