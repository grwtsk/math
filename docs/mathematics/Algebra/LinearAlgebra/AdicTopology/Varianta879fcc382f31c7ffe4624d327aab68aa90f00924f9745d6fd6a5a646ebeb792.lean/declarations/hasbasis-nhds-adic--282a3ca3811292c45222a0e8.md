# hasBasis_nhds_adic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07eedfdb10539d653e1f4a3c918fd1d7096fdde4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:900bf123-aa48-3a17-ef59-90b424fda669",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b25fd2f-8eba-83d2-b769-e19eeb737be5",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds_adic",
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
  "slug": "hasbasis-nhds-adic--282a3ca3811292c45222a0e8",
  "source": {
    "blob": "07eedfdb10539d653e1f4a3c918fd1d7096fdde4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:282a3ca3811292c45222a0e85bdb79d2844d857e6ab8b2e1cf8d77cc6e50cf77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b25fd2f-8eba-83d2-b769-e19eeb737be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhds_adic (I : Ideal R) (x : R) :
    HasBasis (@nhds R I.adicTopology x) (fun _n : ℕ => True) fun n =>
      (fun y => x + y) '' (I ^ n : Ideal R) := by
  letI := I.adicTopology
  have := I.hasBasis_nhds_zero_adic.map fun y => x + y
  rwa [map_add_left_nhds_zero x] at this

variable (I : Ideal R) (M : Type*) [AddCommGroup M] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07eedfdb10539d653e1f4a3c918fd1d7096fdde4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
