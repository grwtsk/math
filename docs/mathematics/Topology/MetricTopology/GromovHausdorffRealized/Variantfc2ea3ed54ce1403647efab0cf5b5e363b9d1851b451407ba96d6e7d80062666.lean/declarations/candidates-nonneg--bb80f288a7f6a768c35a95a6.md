# candidates_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82f907a1e1323a2487d6bab6c1fa2cf06a775609",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffc9ea5e-cd57-ae62-28a9-4efe882d3b7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56d1751c-451e-6be1-7698-e897ca6463cd",
  "kind": "theorem",
  "lexical_name": "candidates_nonneg",
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
  "slug": "candidates-nonneg--bb80f288a7f6a768c35a95a6",
  "source": {
    "blob": "82f907a1e1323a2487d6bab6c1fa2cf06a775609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb80f288a7f6a768c35a95a653f76cf8f066bff349cfdc27a59519cd12363a31",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d1751c-451e-6be1-7698-e897ca6463cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem candidates_nonneg (fA : f ∈ candidates X Y) : 0 ≤ f (x, y) := by
  have : 0 ≤ 2 * f (x, y) :=
    calc
      0 = f (x, x) := (candidates_refl fA).symm
      _ ≤ f (x, y) + f (y, x) := candidates_triangle fA
      _ = f (x, y) + f (x, y) := by rw [candidates_symm fA]
      _ = 2 * f (x, y) := by ring
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82f907a1e1323a2487d6bab6c1fa2cf06a775609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
