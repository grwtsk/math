# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5b6ff8889c9c723e9a73ae9f08744d9d76620495e4f5fc85a627c27dfebd172",
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
  "slug": "instance--cb123b0cfda253fead96f278",
  "source": {
    "blob": "c102a77be8ce2309987ba62ccf51a017c5e49961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb123b0cfda253fead96f278173c6663f0b678c848072c7b5b6166c0c750edbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5b6ff8889c9c723e9a73ae9f08744d9d76620495e4f5fc85a627c27dfebd172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [h : ∀ i : ι, Projective R (A i)] : Projective R (Π₀ i, A i) :=
  .of_lifting_property'' fun f hf ↦ by
    classical
      choose g hg using fun i ↦ projective_lifting_property f (DFinsupp.lsingle i) hf
      replace hg : ∀ i x, f (g i x) = DFinsupp.single i x := fun i ↦ DFunLike.congr_fun (hg i)
      refine ⟨DFinsupp.coprodMap g, ?_⟩
      ext i x j
      simp only [comp_apply, id_apply, DFinsupp.lsingle_apply, DFinsupp.coprodMap_apply_single, hg]

/-- Free modules are projective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c102a77be8ce2309987ba62ccf51a017c5e49961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
