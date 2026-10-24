# _root_.GRWTSK.Algebra.UniversalAlgebra.MulTopPrime.Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.MonoidWithZeroHom.withTopMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4851b2ee1786cb3d51f20599813c66c0efeebb152cfe3a61a54406426cf279e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.MulTopPrime.Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.MonoidWithZeroHom.withTopMap",
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
  "slug": "root-grwtsk-algebra-universalalgebra-multopprime-variantebe01adf8c9bc8f4--0dcb04563a39df6bab8643c5",
  "source": {
    "blob": "5759fc543e133625f7934f0931754930b9a85b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 115,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dcb04563a39df6bab8643c52ffe36f588f16b51c52a60c5cec7c3f55776c9be",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4851b2ee1786cb3d51f20599813c66c0efeebb152cfe3a61a54406426cf279e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.GRWTSK.Algebra.UniversalAlgebra.MulTopPrime.Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.MonoidWithZeroHom.withTopMap {R S : Type*} [MulZeroOneClass R] [DecidableEq R]
    [Nontrivial R] [MulZeroOneClass S] [DecidableEq S] [Nontrivial S] (f : R →*₀ S)
    (hf : Function.Injective f) : WithTop R →*₀ WithTop S :=
  { f.toZeroHom.withTopMap, f.toMonoidHom.toOneHom.withTopMap with
    toFun := WithTop.map f
    map_mul' := fun x y => by
      have : ∀ z, map f z = 0 ↔ z = 0 := fun z =>
        (Option.map_injective hf).eq_iff' f.toZeroHom.withTopMap.map_zero
      rcases Decidable.eq_or_ne x 0 with (rfl | hx)
      · simp
      rcases Decidable.eq_or_ne y 0 with (rfl | hy)
      · simp
      induction' x with x
      · simp [hy, this]
      induction' y with y
      · have : (f x : WithTop S) ≠ 0 := by simpa [hf.eq_iff' (map_zero f)] using hx
        simp [mul_top hx, mul_top this]
      · simp [← coe_mul] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantea2c55ea152ec7ac36e51ea10de404eab786aa34cc1ba13422abdcbc2b3b672d.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5759fc543e133625f7934f0931754930b9a85b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
