# _root_.GRWTSK.Algebra.AlgebraIsSeparable.Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.Irreducible.separable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2f6b24-ffb5-4730-0e80-e3112c7a78a4",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.AlgebraIsSeparable.Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.Irreducible.separable",
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
  "slug": "root-grwtsk-algebra-algebraisseparable-variantc4d45719998359fcb65cead783--4684d92d7bc90f2b02997988",
  "source": {
    "blob": "0fdc29ffb771e8b8edb1455c8cc00abfe3a10e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 521,
    "path": "GRWTSK/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4684d92d7bc90f2b02997988b34c43c2fdffb170736860ba9c478cb9fa68cff5",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2f6b24-ffb5-4730-0e80-e3112c7a78a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.AlgebraIsSeparable.Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.Irreducible.separable [CharZero F] {f : F[X]} (hf : Irreducible f) :
    f.Separable := by
  rw [separable_iff_derivative_ne_zero hf, Ne, ← degree_eq_bot, degree_derivative_eq]
  · rintro ⟨⟩
  rw [pos_iff_ne_zero, Ne, natDegree_eq_zero_iff_degree_le_zero, degree_le_zero_iff]
  refine fun hf1 => hf.not_isUnit ?_
  rw [hf1, isUnit_C, isUnit_iff_ne_zero]
  intro hf2
  rw [hf2, C_0] at hf1
  exact absurd hf1 hf.ne_zero

end Field

end Polynomial

open Polynomial

section CommRing

variable (F L K : Type*) [CommRing F] [Ring K] [Algebra F K]

-- TODO: refactor to allow transcendental extensions?
-- See: https://en.wikipedia.org/wiki/Separable_extension#Separability_of_transcendental_extensions
-- Note that right now a Galois extension (class `IsGalois`) is defined to be an extension which
-- is separable and normal, so if the definition of separable changes here at some point
-- to allow non-algebraic extensions, then the definition of `IsGalois` must also be changed.

variable {K} in
/--
An element `x` of an algebra `K` over a commutative ring `F` is said to be *separable*, if its
minimal polynomial over `K` is separable. Note that the minimal polynomial of any element not
integral over `F` is defined to be `0`, which is not a separable polynomial.
-/
@[stacks 09H1 "second part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fdc29ffb771e8b8edb1455c8cc00abfe3a10e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
