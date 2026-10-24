# reducedW_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6942aa5fc4525c5a3f673b53c26b1e07409a7b9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08d9c5db-2334-9e65-1643-94ae29843938",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b46defc7-f704-22a8-874c-148ace787a91",
  "kind": "theorem",
  "lexical_name": "reducedW_half",
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
  "slug": "reducedw-half--cbd5ae6d44432ea6c016d8c5",
  "source": {
    "blob": "6942aa5fc4525c5a3f673b53c26b1e07409a7b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd5ae6d44432ea6c016d8c5d87c4733cf4c93a6bc2d4237963661c30a50d796",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b46defc7-f704-22a8-874c-148ace787a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedW_half : reducedW (1 / 2) = deriv W (1 / 2) := by
  have hd := (((hasDerivAt_id (1 / 2 : ℂ)).sub_const (1 / 2)).mul
    (reducedW_differentiable (1 / 2)).hasDerivAt)
  have he : (fun z : ℂ => (z - 1 / 2) * reducedW z) = W := by
    funext z
    exact (W_factor z).symm
  have hd' : HasDerivAt (fun z : ℂ => (z - 1 / 2) * reducedW z)
      (reducedW (1 / 2)) (1 / 2) := by simpa using! hd
  rw [he] at hd'
  exact hd'.deriv.symm

/-- The global quotient removes the common zero before any shift or smoothing is composed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variant70099386d9b55ff900e22c7cb8dde975148f60cb94d79374f46a84e06bcdcdd1.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6942aa5fc4525c5a3f673b53c26b1e07409a7b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
