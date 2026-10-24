# num_mem_carrier_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77ce08a8-3cfd-21ef-6bc7-19c6aba1f8aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da2be8a5-375f-9ca3-6da9-a0be0c75b24f",
  "kind": "theorem",
  "lexical_name": "num_mem_carrier_iff",
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
  "slug": "num-mem-carrier-iff--0650705e75e7506cecf4deea",
  "source": {
    "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 325,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0650705e75e7506cecf4deea875c2cba42de2167a2a4fe88546c8c7a56b8a4bc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2be8a5-375f-9ca3-6da9-a0be0c75b24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem num_mem_carrier_iff (hm : 0 < m) (q : Spec.T A⁰_ f)
    (z : HomogeneousLocalization.NumDenSameDeg 𝒜 (.powers f)) :
    z.num.1 ∈ carrier f_deg q ↔ HomogeneousLocalization.mk z ∈ q.asIdeal := by
  obtain ⟨n, hn : f ^ n = _⟩ := z.den_mem
  have : f ^ n ≠ 0 := fun e ↦ by
    have := HomogeneousLocalization.subsingleton 𝒜 (x := .powers f) ⟨n, e⟩
    exact IsEmpty.elim (inferInstanceAs (IsEmpty (PrimeSpectrum (A⁰_ f)))) q
  convert! mem_carrier_iff_of_mem_mul f_deg hm q z.num.1 (n := n) ?_ using 2
  · apply HomogeneousLocalization.val_injective; simp only [hn, HomogeneousLocalization.val_mk]
  · have := degree_eq_of_mem_mem 𝒜 (SetLike.pow_mem_graded n f_deg) (hn.symm ▸ z.den.2) this
    rw [← smul_eq_mul, this]; exact z.num.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
