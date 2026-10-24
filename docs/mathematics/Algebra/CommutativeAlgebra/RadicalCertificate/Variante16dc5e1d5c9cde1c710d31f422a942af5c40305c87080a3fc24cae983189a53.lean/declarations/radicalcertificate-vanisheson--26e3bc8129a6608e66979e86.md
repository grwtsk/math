# RadicalCertificate.vanishesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aaabf63-b4e0-68c5-6160-a345a67e8358",
  "kind": "theorem",
  "lexical_name": "RadicalCertificate.vanishesOn",
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
  "slug": "radicalcertificate-vanisheson--26e3bc8129a6608e66979e86",
  "source": {
    "blob": "d8800c2c320358892d4e6e7f1c4c705035ed5572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e3bc8129a6608e66979e8685ba3a29b7014dabb2a0091aab140ccbd90c2d39",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aaabf63-b4e0-68c5-6160-a345a67e8358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RadicalCertificate.vanishesOn
    {Variable : Type u} {K : Type v} [Field K]
    {system : EquationSystem Variable K}
    {claim : MvPolynomial Variable K}
    (certificate : RadicalCertificate system claim) :
    system.VanishesOn claim := by
  intro solution
  apply eq_zero_of_pow_eq_zero
  rw [← MvPolynomial.eval_pow, certificate.identity]
  exact system.eval_idealCombination_eq_zero
    solution certificate.coefficient

/-- A named geometric-containment form of the same certified implication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8800c2c320358892d4e6e7f1c4c705035ed5572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
