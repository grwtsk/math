# stdPart_omega

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08d4754ea30ac52294a7d8d064288c50e563fb74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7f5fcf8-fd42-48df-3fd5-2627162a28b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd9505a3-5fd8-728a-5405-92144ee0c1dd",
  "kind": "theorem",
  "lexical_name": "stdPart_omega",
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
  "slug": "stdpart-omega--fd7b72b1d1a5dc10243ed97c",
  "source": {
    "blob": "08d4754ea30ac52294a7d8d064288c50e563fb74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7b72b1d1a5dc10243ed97cfe7981c59aa46925b3a2d8b828e8611eaea5a6c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9505a3-5fd8-728a-5405-92144ee0c1dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdPart_omega : stdPart ω = 0 := by
  rw [stdPart_eq_zero]
  exact archimedeanClassMk_omega_neg.ne

/-! #### ε -/

/-- A sample infinitesimal hyperreal ε = ⟦(0, 1, 1/2, 1/3, ⋯)⟧. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hyperreal/Variante44ba5fde11e623eab070c996e0fc9b05e1f7ccebac9302fcbfe2bc60a90be2f.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d4754ea30ac52294a7d8d064288c50e563fb74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
