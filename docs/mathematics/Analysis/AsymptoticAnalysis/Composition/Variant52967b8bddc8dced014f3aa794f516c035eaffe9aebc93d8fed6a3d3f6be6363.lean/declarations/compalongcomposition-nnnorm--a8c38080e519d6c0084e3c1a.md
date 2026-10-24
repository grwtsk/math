# compAlongComposition_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d611050-bec7-01f7-da93-326ae94e3d82",
  "kind": "theorem",
  "lexical_name": "compAlongComposition_nnnorm",
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
  "slug": "compalongcomposition-nnnorm--a8c38080e519d6c0084e3c1a",
  "source": {
    "blob": "c6c9794abc494d790c095633044ce10546f8cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 355,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8c38080e519d6c0084e3c1aecec4eed47129d203883cfb071a2db5430cc21df",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d611050-bec7-01f7-da93-326ae94e3d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compAlongComposition_nnnorm {n : ℕ} (q : FormalMultilinearSeries 𝕜 F G)
    (p : FormalMultilinearSeries 𝕜 E F) (c : Composition n) :
    ‖q.compAlongComposition p c‖₊ ≤ ‖q c.length‖₊ * ∏ i, ‖p (c.blocksFun i)‖₊ := by
  rw [← NNReal.coe_le_coe]; push_cast; exact q.compAlongComposition_norm p c
#align formal_multilinear_series.comp_along_composition_nnnorm FormalMultilinearSeries.compAlongComposition_nnnorm

/-!
### The identity formal power series

We will now define the identity power series, and show that it is a neutral element for left and
right composition.
-/


section

variable (𝕜 E)

/-- The identity formal multilinear series, with all coefficients equal to `0` except for `n = 1`
where it is (the continuous multilinear version of) the identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c9794abc494d790c095633044ce10546f8cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
