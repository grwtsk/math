# shellPrefix_has_disjointDyadicCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f7cf7cf-9296-04a6-8ff7-1fcac5e8ea0e",
  "kind": "theorem",
  "lexical_name": "shellPrefix_has_disjointDyadicCode",
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
  "slug": "shellprefix-has-disjointdyadiccode--1fe4f2ce45e3a1fd069fd555",
  "source": {
    "blob": "e8ca1b1143fb8c5e71226c2db770e9b721ee383f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fe4f2ce45e3a1fd069fd555cd81d3c61164747b19b993272e339de45ed4038f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7cf7cf-9296-04a6-8ff7-1fcac5e8ea0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shellPrefix_has_disjointDyadicCode {N q x : ℕ}
    (hx : x ∈ typeIIProductShell N q) :
    Nonempty (TypeIIShellPrefixCode N q x) := by
  have hxmem := mem_typeIIProductShell_iff.mp hx
  have hlower : 1 * 2 ^ q ≤ x := by omega
  have hupper : x ≤ (1 + 1) * 2 ^ q := by
    have := hxmem.2.trans (min_le_left _ _)
    rw [pow_succ'] at this
    omega
  obtain ⟨raw⟩ := exists_rawShellPrefixCode q 1 x hlower hupper
  let convert : {I // I ∈ raw.intervals} → TypeIIProductDyadicInterval N q :=
    fun I ↦ rawIntervalToProductInterval I.1
      (raw.scale_le I.1 I.2)
      (by simpa using (raw.contained I.1 I.2).1)
      ((raw.contained I.1 I.2).2.trans hxmem.2)
  have hconvert_injective : Function.Injective convert := by
    intro I J hIJ
    apply Subtype.ext
    cases I with
    | mk I hI =>
      cases J with
      | mk J hJ =>
        cases I
        cases J
        simp_all [convert, rawIntervalToProductInterval]
  let embedding : {I // I ∈ raw.intervals} ↪
      TypeIIProductDyadicInterval N q :=
    ⟨convert, hconvert_injective⟩
  let code : Finset (TypeIIProductDyadicInterval N q) :=
    Finset.univ.map embedding
  refine ⟨{
    intervals := code
    pairwise_disjoint := ?_
    exact_cover := ?_
    card_le := ?_ }⟩
  · intro A hA B hB hne
    simp only [code, Finset.coe_map, Set.mem_image, Finset.mem_coe,
      Finset.mem_univ] at hA hB
    obtain ⟨I, _hIuniv, rfl⟩ := hA
    obtain ⟨J, _hJuniv, rfl⟩ := hB
    have hIJ : I.1 ≠ J.1 := by
      intro h
      apply hne
      exact congrArg embedding (Subtype.ext h)
    have hraw := raw.pairwise_disjoint I.2 J.2 hIJ
    change Disjoint (Finset.Ioc I.1.lower I.1.upper)
      (Finset.Ioc J.1.lower J.1.upper)
    change Disjoint (Finset.Ioc I.1.lower I.1.upper)
      (Finset.Ioc J.1.lower J.1.upper) at hraw
    exact hraw
  · ext n
    constructor
    · intro hn
      simp only [Finset.mem_biUnion] at hn
      obtain ⟨D, hDcode, hnD⟩ := hn
      simp only [code, Finset.mem_map] at hDcode
      obtain ⟨I, _hI, rfl⟩ := hDcode
      have hnraw : n ∈ I.1.carrier := by
        change n ∈ Finset.Ioc I.1.lower I.1.upper at hnD
        exact hnD
      have hrawCover : n ∈ Finset.Ioc (1 * 2 ^ q) x := by
        rw [← raw.exact_cover]
        exact Finset.mem_biUnion.mpr ⟨I.1, I.2, hnraw⟩
      simpa [typeIIProductShellPrefixCarrier] using hrawCover
    · intro hn
      have hnraw : n ∈ raw.intervals.biUnion
          RawProductDyadicInterval.carrier := by
        rw [raw.exact_cover]
        simpa [typeIIProductShellPrefixCarrier] using hn
      obtain ⟨I, hI, hnI⟩ := Finset.mem_biUnion.mp hnraw
      apply Finset.mem_biUnion.mpr
      let Isub : {J // J ∈ raw.intervals} := ⟨I, hI⟩
      refine ⟨convert Isub, ?_, ?_⟩
      · simp [code, embedding, Isub]
      · change n ∈ Finset.Ioc I.lower I.upper
        exact hnI
  · calc
      code.card = Fintype.card {I // I ∈ raw.intervals} := by
        simp [code]
      _ = raw.intervals.card := Fintype.card_coe _
      _ ≤ q + 1 := raw.card_le
      _ ≤ q + 2 := by omega

/-- Exact matrix reconstruction supplied by a shell prefix code. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ca1b1143fb8c5e71226c2db770e9b721ee383f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
