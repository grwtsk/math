# eqvGen_rel_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f1a9d2c-fa27-37d0-74b9-b0ebd04b0352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c24ef192-18ae-734b-1c74-c801a2e5bdfb",
  "kind": "theorem",
  "lexical_name": "eqvGen_rel_eq",
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
  "slug": "eqvgen-rel-eq--7a88cbfdec33a23afa778841",
  "source": {
    "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 100,
    "path": "GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a88cbfdec33a23afa77884122178dd1e6fcf9bf9170e4f50c8ea8a50c5bf05d",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c24ef192-18ae-734b-1c74-c801a2e5bdfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqvGen_rel_eq (r : R → R → Prop) : Relation.EqvGen (Rel r) = RingConGen.Rel r := by
  ext x₁ x₂
  constructor
  · intro h
    induction h with
    | rel _ _ h => induction h with
      | of => exact RingConGen.Rel.of _ _ ‹_›
      | add_left _ h => exact h.add (RingConGen.Rel.refl _)
      | mul_left _ h => exact h.mul (RingConGen.Rel.refl _)
      | mul_right _ h => exact (RingConGen.Rel.refl _).mul h
    | refl => exact RingConGen.Rel.refl _
    | symm => exact RingConGen.Rel.symm ‹_›
    | trans => exact RingConGen.Rel.trans ‹_› ‹_›
  · intro h
    induction h with
    | of => exact Relation.EqvGen.rel _ _ (Rel.of ‹_›)
    | refl => exact (RingQuot.ringCon r).refl _
    | symm => exact (RingQuot.ringCon r).symm ‹_›
    | trans => exact (RingQuot.ringCon r).trans ‹_› ‹_›
    | add => exact (RingQuot.ringCon r).add ‹_› ‹_›
    | mul => exact (RingQuot.ringCon r).mul ‹_› ‹_›

end RingQuot

/-- The quotient of a ring by an arbitrary relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba397acab1672dc3e4e3fea49caa7877b18e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
