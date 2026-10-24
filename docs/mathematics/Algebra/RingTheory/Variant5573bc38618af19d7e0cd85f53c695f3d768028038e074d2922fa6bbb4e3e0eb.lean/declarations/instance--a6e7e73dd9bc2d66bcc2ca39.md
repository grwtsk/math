# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30089bcfe6d8c1c63c1606c5b68e01abe4bc8420716b7972bd147a9324f7c71d",
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
  "slug": "instance--a6e7e73dd9bc2d66bcc2ca39",
  "source": {
    "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 117,
    "path": "GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6e7e73dd9bc2d66bcc2ca39926cd953accbaf5ab32a787ba5e25ec3e2002a56",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30089bcfe6d8c1c63c1606c5b68e01abe4bc8420716b7972bd147a9324f7c71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–137.

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

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984c72969891f4231b6ea7f64064d5b47c2d1b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
