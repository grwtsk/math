# isUnit_iff_isUnit_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae7087e65e564ba3e012927edf8174f6f65c890f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:392aa765-d310-ba27-1bdc-299a4f0539b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d08f8ff-7a21-72b8-26b7-406e324bf8b7",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_isUnit_val",
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
  "slug": "isunit-iff-isunit-val--8c5d0737864a56075657a2b9",
  "source": {
    "blob": "ae7087e65e564ba3e012927edf8174f6f65c890f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 532,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c5d0737864a56075657a2b938fe4ac121265c38c39c3fedce434da620570ca2",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d08f8ff-7a21-72b8-26b7-406e324bf8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_isUnit_val (f : HomogeneousLocalization.AtPrime 𝒜 𝔭) :
    IsUnit f.val ↔ IsUnit f := by
  refine ⟨fun h1 ↦ ?_, IsUnit.map (algebraMap _ _)⟩
  rcases h1 with ⟨⟨a, b, eq0, eq1⟩, rfl : a = f.val⟩
  obtain ⟨f, rfl⟩ := mk_surjective f
  obtain ⟨b, s, rfl⟩ := IsLocalization.mk'_surjective 𝔭.primeCompl b
  rw [val_mk, Localization.mk_eq_mk', ← IsLocalization.mk'_mul, IsLocalization.mk'_eq_iff_eq_mul,
    one_mul, IsLocalization.eq_iff_exists (M := 𝔭.primeCompl)] at eq0
  obtain ⟨c, hc : _ = c.1 * (f.den.1 * s.1)⟩ := eq0
  have : f.num.1 ∉ 𝔭 := by
    exact fun h ↦ mul_mem c.2 (mul_mem f.den_mem s.2)
      (hc ▸ Ideal.mul_mem_left _ c.1 (Ideal.mul_mem_right b _ h))
  refine isUnit_of_mul_eq_one _ (Quotient.mk'' ⟨f.1, f.3, f.2, this⟩) ?_
  rw [← mk_mul, ext_iff_val, val_mk]
  simp [mul_comm f.den.1, Localization.mk_eq_monoidOf_mk']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant237a0d9e0b2811687030a1992fa87b5cfdcb0c6cde7e6dec14e66fbd76b441cc.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae7087e65e564ba3e012927edf8174f6f65c890f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
