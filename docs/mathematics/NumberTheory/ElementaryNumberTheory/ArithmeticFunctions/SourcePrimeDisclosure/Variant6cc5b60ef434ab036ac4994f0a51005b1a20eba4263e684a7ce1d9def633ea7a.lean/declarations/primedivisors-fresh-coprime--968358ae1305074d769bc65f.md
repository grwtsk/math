# primeDivisors_fresh_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a59c9000024bc7cdbee6f9d836f78676a832cf4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05776a54-3fc8-b728-6b5f-bba154588ac4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09e8fd26-277b-f0b9-35d5-2d44ed45178f",
  "kind": "theorem",
  "lexical_name": "primeDivisors_fresh_coprime",
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
  "slug": "primedivisors-fresh-coprime--968358ae1305074d769bc65f",
  "source": {
    "blob": "a59c9000024bc7cdbee6f9d836f78676a832cf4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:968358ae1305074d769bc65f9b581785134cfaf2fe5acb1affefb367206cecec",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e8fd26-277b-f0b9-35d5-2d44ed45178f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeDivisors_fresh_coprime (P : Finset ℕ) (U p : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    ∀ e ∈ primeDivisors P U, Nat.Coprime p e := by
  classical
  intro e he
  obtain ⟨S, hS, rfl⟩ := Finset.mem_image.mp (Finset.mem_filter.mp he).1
  have hSP := Finset.mem_powerset.mp hS
  have hfac := Nat.primeFactors_prod (fun r hr => hP r (hSP hr))
  apply hp.coprime_iff_not_dvd.mpr
  intro hd
  have hn : (∏ r ∈ S, r) ≠ 0 := Finset.prod_ne_zero_iff.mpr
    (fun r hr => (hP r (hSP hr)).ne_zero)
  have hf := Nat.mem_primeFactors.mpr ⟨hp, hd, hn⟩
  rw [hfac] at hf
  exact hpP (hSP hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6cc5b60ef434ab036ac4994f0a51005b1a20eba4263e684a7ce1d9def633ea7a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a59c9000024bc7cdbee6f9d836f78676a832cf4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
