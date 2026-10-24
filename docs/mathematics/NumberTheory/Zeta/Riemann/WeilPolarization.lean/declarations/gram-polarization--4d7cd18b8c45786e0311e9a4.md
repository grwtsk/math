# gram_polarization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ee2d1a4-1746-de31-fb34-e898a5c1d43f",
  "kind": "theorem",
  "lexical_name": "gram_polarization",
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
  "slug": "gram-polarization--4d7cd18b8c45786e0311e9a4",
  "source": {
    "blob": "19ee46bea416fc16a26b673b9db6339ece3f83bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d7cd18b8c45786e0311e9a4d0b1ea12068469172b5aebbb48c899c2e5fa08e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ee2d1a4-1746-de31-fb34-e898a5c1d43f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_polarization (family : PositiveGramFamily space H)
    (n : ℕ) (f g : space.Vector) :
    family.gram n f g = WeilPolarization.combine
      (family.diagonal n (f + g)) (family.diagonal n (f - g))
      (family.diagonal n (f + Complex.I • g))
      (family.diagonal n (f - Complex.I • g)) := by
  apply WeilPolarization.of_real_diagonal (family.gram n) (family.diagonal n)
  · intro x y z
    simp only [gram, map_add, inner_add_left]
  · intro c x y
    simp only [gram, map_smul, inner_smul_left, starRingEnd_apply]
  · intro x y z
    simp only [gram, map_add, inner_add_right]
  · intro c x y
    simp only [gram, map_smul, inner_smul_right]
  · intro x
    simpa only [diagonal, gram, RCLike.re_to_complex,
      RCLike.ofReal_eq_complex_ofReal] using
      (inner_self_ofReal_re (𝕜 := ℂ) (family.map n x))

end PositiveGramFamily

namespace DiagonalPositiveGramLimit

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

/-- Every fixed pair uses only four convergent diagonals. The original universal
vector quantifier supplies these diagonals without a uniform-in-vector premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ee46bea416fc16a26b673b9db6339ece3f83bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
