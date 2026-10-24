# isSquare_of_jacobiSym_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f05dd844-5ae3-f696-caa0-157c64c101ed",
  "kind": "theorem",
  "lexical_name": "isSquare_of_jacobiSym_eq_one",
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
  "slug": "issquare-of-jacobisym-eq-one--5cdd10931abaa66d8f870649",
  "source": {
    "blob": "f1f830ec89cc5982a95f8e9f5ab1cf994e621908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 317,
    "path": "GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cdd10931abaa66d8f8706497d172b8f4d98ceafd58e779bf1a626a4f56349c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f05dd844-5ae3-f696-caa0-157c64c101ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSquare_of_jacobiSym_eq_one {a : ℤ} {p : ℕ} [Fact p.Prime] (h : J(a | p) = 1) :
    IsSquare (a : ZMod p) :=
  Classical.not_not.mp <| by rw [← nonsquare_iff_jacobiSym_eq_neg_one, h]; decide
#align zmod.is_square_of_jacobi_sym_eq_one ZMod.isSquare_of_jacobiSym_eq_one

end ZMod

/-!
### Values at `-1`, `2` and `-2`
-/


namespace jacobiSym

/-- If `χ` is a multiplicative function such that `J(a | p) = χ p` for all odd primes `p`,
then `J(a | b)` equals `χ b` for all odd natural numbers `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f830ec89cc5982a95f8e9f5ab1cf994e621908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
