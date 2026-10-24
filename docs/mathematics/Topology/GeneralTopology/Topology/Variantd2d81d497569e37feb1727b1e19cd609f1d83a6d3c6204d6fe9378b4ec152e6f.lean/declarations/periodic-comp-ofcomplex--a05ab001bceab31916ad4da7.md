# periodic_comp_ofComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7e2d742-31e6-5a2f-1abd-67c2985c82cf",
  "kind": "theorem",
  "lexical_name": "periodic_comp_ofComplex",
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
  "slug": "periodic-comp-ofcomplex--a05ab001bceab31916ad4da7",
  "source": {
    "blob": "ed91f45a4a754ef94d07c6aefed1a8115a866355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05ab001bceab31916ad4da76ae398321e01f3bc9a23ec458a41b8749df1c4ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e2d742-31e6-5a2f-1abd-67c2985c82cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodic_comp_ofComplex {f : ℍ → ℂ} {h : ℝ} (hf : ∀ τ : ℍ, f (h +ᵥ τ) = f τ) :
    Periodic (f ∘ ofComplex) h := by
  intro w
  by_cases hw : 0 < w.im
  · have hwh : 0 < (w + h).im := by simp [hw]
    simp only [comp_apply, ofComplex_apply_of_im_pos hwh, ofComplex_apply_of_im_pos hw]
    convert hf ⟨w, hw⟩ using 2
    ext
    simp [add_comm]
  · have : (w + h).im ≤ 0 := by simpa using not_lt.mp hw
    simp [comp_apply, ofComplex_apply_of_im_nonpos this,
      ofComplex_apply_of_im_nonpos (not_lt.mp hw)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed91f45a4a754ef94d07c6aefed1a8115a866355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
