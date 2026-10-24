# isOrthogonal_short_and_long

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6d628df-310a-c085-0fe8-9db9253c1997",
  "kind": "lemma",
  "lexical_name": "isOrthogonal_short_and_long",
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
  "slug": "isorthogonal-short-and-long--135b14321ea56c413a16b981",
  "source": {
    "blob": "d0b7a9360dd5128ec31d17bd3338c2709d10070c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 453,
    "path": "GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135b14321ea56c413a16b98188a8d1a9676cdd04064869e302cf6168fd25ce87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6d628df-310a-c085-0fe8-9db9253c1997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOrthogonal_short_and_long {i : ι} (hi : P.root i ∉ allRoots P) :
    P.IsOrthogonal i (short P) ∧ P.IsOrthogonal i (long P) := by
  suffices P.pairingIn ℤ i (short P) = 0 ∧ P.pairingIn ℤ i (long P) = 0 by
    have := P.reflexive_left
    simpa [isOrthogonal_iff_pairing_eq_zero, ← P.algebraMap_pairingIn ℤ]
  simp only [mem_cons, not_mem_nil, or_false, not_or] at hi
  obtain ⟨h₁, h₂, h₃, h₄, h₅, h₆, h₇, h₈, h₉, h₁₀, h₁₁, h₁₂⟩ := hi
  have ha := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i (short P) ‹_› ‹_›
  have hb := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i (long P) ‹_› ‹_›
  have hc := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i (shortAddLong P) ‹_› ‹_›
  have hd := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i (twoShortAddLong P) ‹_› ‹_›
  have he := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i (threeShortAddLong P) ‹_› ‹_›
  have hf := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i (threeShortAddTwoLong P) ‹_› ‹_›
  apply isOrthogonal_short_and_long_aux rfl ha hb hc hd he hf <;> simp

section IsIrreducible

variable [P.IsIrreducible]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b7a9360dd5128ec31d17bd3338c2709d10070c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
