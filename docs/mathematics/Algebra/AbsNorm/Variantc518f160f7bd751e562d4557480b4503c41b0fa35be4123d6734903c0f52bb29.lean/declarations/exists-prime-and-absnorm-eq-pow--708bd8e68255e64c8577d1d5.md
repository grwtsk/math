# exists_prime_and_absNorm_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:418bb8b8-3642-b952-a2aa-a116b315e2e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fd123b4-0e2d-a996-ac8e-cbe08fbac641",
  "kind": "lemma",
  "lexical_name": "exists_prime_and_absNorm_eq_pow",
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
  "slug": "exists-prime-and-absnorm-eq-pow--708bd8e68255e64c8577d1d5",
  "source": {
    "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 448,
    "path": "GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708bd8e68255e64c8577d1d52bd594558541c663b17a6532368eec040e3a7af1",
  "verification": {
    "reference": "docs/verification/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fd123b4-0e2d-a996-ac8e-cbe08fbac641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_prime_and_absNorm_eq_pow (P : Ideal S) [P.IsMaximal] :
    ∃ p n, 0 < n ∧ ↑p ∈ P ∧ p.Prime ∧ P.absNorm = p ^ n := by
  have : IsAddTorsionFree S := .of_isTorsionFree ℤ _
  have := CharZero.of_isAddTorsionFree S S
  have : Finite (S ⧸ P) := Submodule.finiteQuotientOfFreeOfRankEq (P.restrictScalars ℤ)
    (Ideal.finrank_eq_finrank (Module.Free.chooseBasis _ _) _
      (Ideal.IsMaximal.ne_bot_of_isIntegral_int P))
  cases nonempty_fintype (S ⧸ P)
  let := Ideal.Quotient.field P
  obtain ⟨p, hpR⟩ := CharP.exists (S ⧸ P)
  obtain ⟨n, hp, e⟩ := FiniteField.card (S ⧸ P) p
  have hP : P.absNorm = p ^ (n : ℕ) := (Nat.card_eq_fintype_card.trans e:)
  refine ⟨p, n, n.2, ?_, hp, hP⟩
  rw [← Ideal.IsPrime.pow_mem_iff_mem (I := P) inferInstance _ n.pos, ← Nat.cast_pow, ← hP]
  exact P.absNorm_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e6765ba0e20490bbe27999dc8e2f9e01bc483d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
