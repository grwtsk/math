# piecewise_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd595e2eb55020d04dfc645d1df289d63ec04221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b1f2e1a-7355-b91b-1272-e908e4493c7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b0f1f2f-29ce-6ef0-6492-aa893d0693f1",
  "kind": "theorem",
  "lexical_name": "piecewise_univ",
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
  "slug": "piecewise-univ--d892802d5df8f261d023def9",
  "source": {
    "blob": "bd595e2eb55020d04dfc645d1df289d63ec04221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1393,
    "line": 1387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d892802d5df8f261d023def99fe0ba45ce6863389aab3d46d44ff38fab3d07cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0f1f2f-29ce-6ef0-6492-aa893d0693f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1387–1393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piecewise_univ [∀ i : α, Decidable (i ∈ (Set.univ : Set α))] :
    piecewise Set.univ f g = f := by
  ext i
  simp [piecewise]
#align set.piecewise_univ Set.piecewise_univ

--@[simp] -- Porting note: simpNF linter complains
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantc8bf8c808879615981551fec4ae643e5103a010d1757003899461cbd5c002d25.lean#L1387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd595e2eb55020d04dfc645d1df289d63ec04221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
