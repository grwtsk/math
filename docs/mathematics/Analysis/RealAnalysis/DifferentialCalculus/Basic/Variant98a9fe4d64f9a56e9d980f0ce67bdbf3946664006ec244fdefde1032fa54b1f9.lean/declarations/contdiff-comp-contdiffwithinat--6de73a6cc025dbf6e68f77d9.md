# ContDiff.comp₂_contDiffWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 941,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01667366-c7af-4430-2cee-cbe1843e3e00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a40934b9-a103-907f-ba4b-1f138d638806",
  "kind": "theorem",
  "lexical_name": "ContDiff.comp₂_contDiffWithinAt",
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
  "slug": "contdiff-comp-contdiffwithinat--6de73a6cc025dbf6e68f77d9",
  "source": {
    "blob": "b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 941,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de73a6cc025dbf6e68f77d9e9e1ce41a7c46ad0e36c91dcf955a3abbed18e80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a40934b9-a103-907f-ba4b-1f138d638806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 941–949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiff.comp₂_contDiffWithinAt {g : E₁ × E₂ → G} {f₁ : F → E₁} {f₂ : F → E₂}
    {s : Set F} {x : F} (hg : ContDiff 𝕜 n g)
    (hf₁ : ContDiffWithinAt 𝕜 n f₁ s x) (hf₂ : ContDiffWithinAt 𝕜 n f₂ s x) :
    ContDiffWithinAt 𝕜 n (fun x => g (f₁ x, f₂ x)) s x :=
  hg.contDiffAt.comp_contDiffWithinAt x (hf₁.prodMk hf₂)

@[deprecated (since := "2024-10-30")]
alias ContDiff.comp_contDiffWithinAt₂ := ContDiff.comp₂_contDiffWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean#L941).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
