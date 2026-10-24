# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35a49b3956a37ba2578bc7f877a91d12ef851e5587311923a2e78cb2e601bbb2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d6003d7aa2c355903e9fe4d2",
  "source": {
    "blob": "67046c4b233d741bec40bddd080181144973618c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 125,
    "path": "GRWTSK/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6003d7aa2c355903e9fe4d248937d28aa803a27d0adec351ea8531b10934b44",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35a49b3956a37ba2578bc7f877a91d12ef851e5587311923a2e78cb2e601bbb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R₀} [CommSemiring R₀] [Algebra R₀ R] : Algebra R₀ R[S⁻¹] where
  __ := inferInstanceAs (Module R₀ R[S⁻¹])
  algebraMap := numeratorRingHom.comp (algebraMap R₀ R)
  commutes' r x := by
    induction' x using OreLocalization.ind with r₁ s₁
    dsimp
    rw [mul_div_one, oreDiv_mul_char _ _ _ _ (algebraMap R₀ R r) s₁ (Algebra.commutes _ _).symm,
      Algebra.commutes, mul_one]
  smul_def' r x := by
    dsimp
    rw [Algebra.algebraMap_eq_smul_one, ← smul_eq_mul, smul_one_oreDiv_one_smul]

section UMP

variable {T : Type*} [Semiring T]
variable (f : R →+* T) (fS : S →* Units T)
variable (hf : ∀ s : S, f s = fS s)

/-- The universal lift from a ring homomorphism `f : R →+* T`, which maps elements in `S` to
units of `T`, to a ring homomorphism `R[S⁻¹] →+* T`. This extends the construction on
monoids. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67046c4b233d741bec40bddd080181144973618c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
