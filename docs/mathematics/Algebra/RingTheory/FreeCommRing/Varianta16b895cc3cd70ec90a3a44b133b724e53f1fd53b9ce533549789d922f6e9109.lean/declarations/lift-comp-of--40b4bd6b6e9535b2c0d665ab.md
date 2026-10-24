# lift_comp_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "340451f07ed2935f168109878a4749b3fbc104ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e7309e0-fcb7-4f86-22c5-cc1be6ef49b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00eab1ec-ae5b-7751-caf3-09ad8fde2dfc",
  "kind": "theorem",
  "lexical_name": "lift_comp_of",
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
  "slug": "lift-comp-of--40b4bd6b6e9535b2c0d665ab",
  "source": {
    "blob": "340451f07ed2935f168109878a4749b3fbc104ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40b4bd6b6e9535b2c0d665ab5ea52a5dd4f621b4def8879c7fce832074ba276a",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00eab1ec-ae5b-7751-caf3-09ad8fde2dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_comp_of (f : FreeCommRing α →+* R) : lift (f ∘ of) = f :=
  RingHom.ext fun x =>
    FreeCommRing.induction_on x (by rw [RingHom.map_neg, RingHom.map_one, f.map_neg, f.map_one])
      (lift_of _) (fun x y ihx ihy => by rw [RingHom.map_add, f.map_add, ihx, ihy])
      fun x y ihx ihy => by rw [RingHom.map_mul, f.map_mul, ihx, ihy]
#align free_comm_ring.lift_comp_of FreeCommRing.lift_comp_of

@[ext 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340451f07ed2935f168109878a4749b3fbc104ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
