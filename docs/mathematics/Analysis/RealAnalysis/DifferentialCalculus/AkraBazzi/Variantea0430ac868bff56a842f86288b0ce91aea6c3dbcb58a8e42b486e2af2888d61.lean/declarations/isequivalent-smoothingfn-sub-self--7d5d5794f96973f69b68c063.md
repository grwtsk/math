# isEquivalent_smoothingFn_sub_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f40f6373-cb3f-81a8-2710-1db8d1477f21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bdab22b-7297-adf5-8201-af00b2145fdc",
  "kind": "lemma",
  "lexical_name": "isEquivalent_smoothingFn_sub_self",
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
  "slug": "isequivalent-smoothingfn-sub-self--7d5d5794f96973f69b68c063",
  "source": {
    "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 468,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d5d5794f96973f69b68c063e361590675edc18224423b67b6f9c658ad6a9877",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bdab22b-7297-adf5-8201-af00b2145fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEquivalent_smoothingFn_sub_self (i : α) :
    (fun (n : ℕ) => ε (b i * n) - ε n) ~[atTop] fun n => -log (b i) / (log n)^2 := by
  calc (fun (n : ℕ) => 1 / log (b i * n) - 1 / log n)
        =ᶠ[atTop] fun (n : ℕ) => (log n - log (b i * n)) / (log (b i * n) * log n) := by
            filter_upwards [eventually_gt_atTop 1, R.eventually_log_b_mul_pos] with n hn hn'
            have h_log_pos : 0 < log n := Real.log_pos <| by aesop
            simp only [one_div]
            rw [inv_sub_inv (by have := hn' i; positivity) (by aesop)]
      _ =ᶠ[atTop] (fun (n : ℕ) ↦ (log n - log (b i) - log n) / ((log (b i) + log n) * log n)) := by
            filter_upwards [eventually_ne_atTop 0] with n hn
            have : 0 < b i := R.b_pos i
            rw [log_mul (by positivity) (by aesop), sub_add_eq_sub_sub]
      _ = (fun (n : ℕ) => -log (b i) / ((log (b i) + log n) * log n)) := by ext; congr; ring
      _ ~[atTop] (fun (n : ℕ) => -log (b i) / (log n * log n)) := by
            refine IsEquivalent.div (IsEquivalent.refl) <| IsEquivalent.mul ?_ (IsEquivalent.refl)
            have : (fun (n : ℕ) => log (b i) + log n) = fun (n : ℕ) => log n + log (b i) := by
              ext; simp [add_comm]
            rw [this]
            exact IsEquivalent.add_isLittleO IsEquivalent.refl
              <| IsLittleO.natCast_atTop (f := fun (_ : ℝ) => log (b i))
                isLittleO_const_log_atTop
      _ = (fun (n : ℕ) => -log (b i) / (log n)^2) := by ext; congr 1; rw [← pow_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4c4d02baa758897d153bfb24b08abd4567d49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
