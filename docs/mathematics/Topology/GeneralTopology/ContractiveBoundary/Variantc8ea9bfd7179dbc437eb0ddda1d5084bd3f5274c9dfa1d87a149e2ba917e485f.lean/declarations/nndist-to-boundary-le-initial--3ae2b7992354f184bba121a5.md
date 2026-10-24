# nndist_to_boundary_le_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45b6e751df667391795201d5e96ded7ef2fbc6a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa7040ad-a2aa-f2ef-ac18-f61f36323889",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42051442-6aa9-d814-86e3-022791b8148a",
  "kind": "theorem",
  "lexical_name": "nndist_to_boundary_le_initial",
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
  "slug": "nndist-to-boundary-le-initial--3ae2b7992354f184bba121a5",
  "source": {
    "blob": "45b6e751df667391795201d5e96ded7ef2fbc6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae2b7992354f184bba121a5766dd19b0f7248b38af7eb195a58c7c1be52c308",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42051442-6aa9-d814-86e3-022791b8148a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_to_boundary_le_initial
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin)
    (depth : ℕ) :
    nndist
        (iterateSchedule
          certificate.step schedule depth initial)
        certificate.boundary ≤
      nndist initial certificate.boundary := by
  calc
    nndist
        (iterateSchedule
          certificate.step schedule depth initial)
        certificate.boundary ≤
      certificate.contraction ^ depth *
        nndist initial certificate.boundary :=
      certificate.nndist_to_boundary_le_pow
        schedule initial_mem depth
    _ ≤
      1 * nndist initial certificate.boundary :=
      mul_le_mul_right'
        (pow_le_one_of_le
          (le_of_lt certificate.contraction_lt_one)
          depth)
        _
    _ =
      nndist initial certificate.boundary := by
        rw [one_mul]

/-- One schedule converges to the common boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b6e751df667391795201d5e96ded7ef2fbc6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
