# squareDivisors_eq_root_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a78b7e7-474b-71c2-2dac-3a7d66a38146",
  "kind": "theorem",
  "lexical_name": "squareDivisors_eq_root_divisors",
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
  "slug": "squaredivisors-eq-root-divisors--2274bd3ad72f3c9248a58503",
  "source": {
    "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2274bd3ad72f3c9248a58503dec584f23213f4d5c46735a5d5beb86944767d3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a78b7e7-474b-71c2-2dac-3a7d66a38146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisors_eq_root_divisors (n : ℕ) (hn : n ≠ 0) :
    n.divisors.filter (fun d ↦ d ^ 2 ∣ n) = (squareDivisorRoot n).divisors := by
  ext d
  simp only [mem_filter, Nat.mem_divisors]
  constructor
  · rintro ⟨_, hsq⟩
    exact ⟨(square_dvd_iff_dvd_root n d hn).mp hsq, squareDivisorRoot_ne_zero n⟩
  · rintro ⟨hd, _⟩
    have hsq := (square_dvd_iff_dvd_root n d hn).mpr hd
    exact ⟨⟨(dvd_pow_self d (by decide : 2 ≠ 0)).trans hsq, hn⟩, hsq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
