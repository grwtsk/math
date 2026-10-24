# logLongInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b0d89be06045ecf4a1f78f0abe32c176831f38f2ed4ac7c0caa9c2cc6f9db17",
  "kind": "def",
  "lexical_name": "logLongInventory",
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
  "slug": "loglonginventory--46205e7c6280eac8a1230d0f",
  "source": {
    "blob": "31b814d3c658d1ee1a4c6990412ff9ee5757e395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46205e7c6280eac8a1230d0f538d77606e4bc709686d7b47e65dd97f781af84f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b0d89be06045ecf4a1f78f0abe32c176831f38f2ed4ac7c0caa9c2cc6f9db17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logLongInventory (A : ℝ) (i : ℕ) : Finset ℕ :=
  (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
    (fun n ↦ ⌊Real.log n⌋₊ = i)

/-- Only logarithmic rectangles compatible with the source's product support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b814d3c658d1ee1a4c6990412ff9ee5757e395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
