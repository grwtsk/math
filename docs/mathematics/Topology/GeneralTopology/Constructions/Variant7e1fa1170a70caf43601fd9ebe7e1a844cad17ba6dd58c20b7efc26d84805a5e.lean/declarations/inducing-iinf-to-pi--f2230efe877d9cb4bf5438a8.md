# inducing_iInf_to_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e10a11ac4225f22da72d9714d5de296ab914fed0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 982,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5d4c7b2-fd95-3d69-66e4-b9462bd59aa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3dde7cb-01c2-deb3-4627-065422567d84",
  "kind": "theorem",
  "lexical_name": "inducing_iInf_to_pi",
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
  "slug": "inducing-iinf-to-pi--f2230efe877d9cb4bf5438a8",
  "source": {
    "blob": "e10a11ac4225f22da72d9714d5de296ab914fed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 982,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2230efe877d9cb4bf5438a8319917673cc1c435a3e9841a3b527b4640ed5cd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3dde7cb-01c2-deb3-4627-065422567d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inducing_iInf_to_pi {X : Type*} (f : ∀ i, X → π i) :
    @IsInducing X (∀ i, π i) (⨅ i, induced (f i) inferInstance) _ fun x i => f i x :=
  letI := ⨅ i, induced (f i) inferInstance; ⟨(induced_to_pi _).symm⟩

variable [Finite ι] [∀ i, DiscreteTopology (π i)]

/-- A finite product of discrete spaces is discrete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e10a11ac4225f22da72d9714d5de296ab914fed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
