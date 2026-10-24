# provenance_form_solve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975d43f98daacfcf2472ed6c7a02a724798b5d3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:524dc0d7-9411-bf3b-22ce-4c826534dab7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30a49e2d-9e3f-84e9-a0cb-1f219936b655",
  "kind": "theorem",
  "lexical_name": "provenance_form_solve",
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
  "slug": "provenance-form-solve--7559f96e6905a807565cb433",
  "source": {
    "blob": "975d43f98daacfcf2472ed6c7a02a724798b5d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7559f96e6905a807565cb433aed6e6fd10544966df35093009348618017d6ed1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a49e2d-9e3f-84e9-a0cb-1f219936b655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem provenance_form_solve (I : InvertibleProvenanceBlock G) (p : P) (u : U) :
    G.form (provenanceInclusion p) (provenanceInclusion (I.solve u)) =
      G.form (provenanceInclusion p) (autonomousInclusion u) := by
  calc
    G.form (provenanceInclusion p) (provenanceInclusion (I.solve u)) =
        I.gramEquiv (I.solve u) p := by
          symm
          exact I.gramEquiv_apply (I.solve u) p
    _ = provenanceCrossMap G u p := by
          rw [I.gramEquiv_solve]
    _ = G.form (provenanceInclusion p) (autonomousInclusion u) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975d43f98daacfcf2472ed6c7a02a724798b5d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
