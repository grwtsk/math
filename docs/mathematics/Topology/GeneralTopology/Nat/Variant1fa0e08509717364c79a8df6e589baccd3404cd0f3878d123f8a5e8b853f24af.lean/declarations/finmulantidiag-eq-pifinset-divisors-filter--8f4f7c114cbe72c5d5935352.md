# finMulAntidiag_eq_piFinset_divisors_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a5ae01d-db82-97fe-9a0d-e39d966772d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8519a16c-653c-cf7c-5235-2aba3252a271",
  "kind": "theorem",
  "lexical_name": "finMulAntidiag_eq_piFinset_divisors_filter",
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
  "slug": "finmulantidiag-eq-pifinset-divisors-filter--8f4f7c114cbe72c5d5935352",
  "source": {
    "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4f7c114cbe72c5d5935352d25d0b8780206a3ff0e6e193dbf54723dd45bcf8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8519a16c-653c-cf7c-5235-2aba3252a271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finMulAntidiag_eq_piFinset_divisors_filter {d m n : ℕ} (hmn : m ∣ n) (hn : n ≠ 0) :
    finMulAntidiag d m =
      {f ∈ Fintype.piFinset fun _ : Fin d => n.divisors | ∏ i, f i = m} := by
  ext f
  simp only [ne_eq,
    Fintype.mem_piFinset, mem_divisors, mem_filter]
  constructor
  · intro hf
    refine ⟨?_, prod_eq_of_mem_finMulAntidiag hf⟩
    exact fun i => ⟨(dvd_of_mem_finMulAntidiag hf i).trans hmn, hn⟩
  · rw [mem_finMulAntidiag]
    exact fun ⟨_, hprod⟩ => ⟨hprod, ne_zero_of_dvd_ne_zero hn hmn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdc2ca609ff443ae8079ced89c6ed28b4a03af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
