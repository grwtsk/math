# recOnHorner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afe1c2456bfcc8939158c8ebe4f81a8fd6089ba56921a4812f1f0d81f038cb50",
  "kind": "def",
  "lexical_name": "recOnHorner",
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
  "slug": "reconhorner--dede7c5a4024cdc218e7f01e",
  "source": {
    "blob": "bff6299bba56167809cafdb346453e2584b8f3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 100,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dede7c5a4024cdc218e7f01e3fdcfb5ae9b04cb38f3de9b6451bed86272ba076",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afe1c2456bfcc8939158c8ebe4f81a8fd6089ba56921a4812f1f0d81f038cb50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def recOnHorner {M : R[X] → Sort*} (p : R[X]) (M0 : M 0)
    (MC : ∀ p a, coeff p 0 = 0 → a ≠ 0 → M p → M (p + C a))
    (MX : ∀ p, p ≠ 0 → M p → M (p * X)) : M p :=
  if hp : p = 0 then hp ▸ M0
  else by
    have wf : degree (divX p) < degree p := degree_divX_lt hp
    rw [← divX_mul_X_add p] at *
    exact
      if hcp0 : coeff p 0 = 0 then by
        rw [hcp0, C_0, add_zero]
        exact
          MX _ (fun h : divX p = 0 => by simp [h, hcp0] at hp) (recOnHorner (divX p) M0 MC MX)
      else
        MC _ _ (coeff_mul_X_zero _) hcp0
          (if hpX0 : divX p = 0 then show M (divX p * X) by rw [hpX0, zero_mul]; exact M0
          else MX (divX p) hpX0 (recOnHorner _ M0 MC MX))
termination_by _ => p.degree
#align polynomial.rec_on_horner Polynomial.recOnHorner

/-- A property holds for all polynomials of positive `degree` with coefficients in a semiring `R`
if it holds for
* `a * X`, with `a ∈ R`,
* `p * X`, with `p ∈ R[X]`,
* `p + a`, with `a ∈ R`, `p ∈ R[X]`,
with appropriate restrictions on each term.

See `natDegree_ne_zero_induction_on` for a similar statement involving no explicit multiplication.
 -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bff6299bba56167809cafdb346453e2584b8f3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
