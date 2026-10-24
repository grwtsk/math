# ContDiffAt.hasStrictFDerivAt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fca1853-b048-c8a3-1f8d-a66790ac1c3a",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.hasStrictFDerivAt'",
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
  "slug": "contdiffat-hasstrictfderivat--bf7b7a605341cc13ec514173",
  "source": {
    "blob": "a8ab7e1f7a4f5a3000655f2eac84f43d93ae58ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf7b7a605341cc13ec5141732a4931c159af22c7a41fed7b71983bd0c513da61",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fca1853-b048-c8a3-1f8d-a66790ac1c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.hasStrictFDerivAt' {f : E' → F'} {f' : E' →L[𝕂] F'} {x : E'}
    (hf : ContDiffAt 𝕂 n f x) (hf' : HasFDerivAt f f' x) (hn : 1 ≤ n) :
    HasStrictFDerivAt f f' x := by
  rcases hf.of_le hn 1 le_rfl with ⟨u, H, p, hp⟩
  simp only [nhdsWithin_univ, mem_univ, insert_eq_of_mem] at H
  have := hp.hasStrictFDerivAt le_rfl H
  rwa [hf'.unique this.hasFDerivAt]

/-- If a function is `C^n` with `1 ≤ n` around a point, and its derivative at that point is given to
us as `f'`, then `f'` is also a strict derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ab7e1f7a4f5a3000655f2eac84f43d93ae58ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
