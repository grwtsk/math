# raw_eq_zero_of_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f868bc37a874fade339e66b20157624968f44c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7c0d5133aeaaf4e4e352ed1ad30ebc44a930916953e452f4adfd27097a8d67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ee67c58-9781-50a6-8ba4-59939a21499b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d45d2f65-82e4-29cf-3b94-fd2f6c1c1f0a",
  "kind": "theorem",
  "lexical_name": "raw_eq_zero_of_posDef",
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
  "slug": "raw-eq-zero-of-posdef--ac7649c3c239f017456520e0",
  "source": {
    "blob": "4f868bc37a874fade339e66b20157624968f44c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 22,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/A7e933fa192d74f7a/Variante7c0d5133aeaaf4e4e352ed1ad30ebc44a930916953e452f4adfd27097a8d67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac7649c3c239f017456520e079cbb63331efe33250da5e2a4f06a232bf1f39f2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/A7e933fa192d74f7a/Variante7c0d5133aeaaf4e4e352ed1ad30ebc44a930916953e452f4adfd27097a8d67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d45d2f65-82e4-29cf-3b94-fd2f6c1c1f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_eq_zero_of_posDef
    (kernel : Kernel.PositiveKernel Index)
    (positiveDefinite : kernel.matrix.PosDef)
    {f : Raw kernel}
    (energyZero : Raw.inner kernel f f = 0) :
    f = 0 := by
  by_contra nonzero
  have positiveEnergy := positiveDefinite.2 nonzero
  change 0 < Raw.inner kernel f f at positiveEnergy
  rw [energyZero] at positiveEnergy
  exact (lt_irrefl (0 : ℂ)) positiveEnergy

section Kronecker

variable [DecidableEq Index]

end Kronecker

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/A7e933fa192d74f7a/Variante7c0d5133aeaaf4e4e352ed1ad30ebc44a930916953e452f4adfd27097a8d67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/A7e933fa192d74f7a/Variante7c0d5133aeaaf4e4e352ed1ad30ebc44a930916953e452f4adfd27097a8d67f.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f868bc37a874fade339e66b20157624968f44c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
