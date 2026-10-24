# injective_noncommPiCoprod_of_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:113931cc-1958-85d5-ac68-b15200f02f8a",
  "kind": "theorem",
  "lexical_name": "injective_noncommPiCoprod_of_independent",
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
  "slug": "injective-noncommpicoprod-of-independent--5007e928c641199ff38c15cd",
  "source": {
    "blob": "969d03bb0764b7f983e73ecef3278aee6e08a2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 224,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5007e928c641199ff38c15cd2bfb46f4995586faddc9e4a42914a15a1de073ab",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:113931cc-1958-85d5-ac68-b15200f02f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_noncommPiCoprod_of_independent
    (hind : CompleteLattice.Independent fun i => (ϕ i).range)
    (hinj : ∀ i, Function.Injective (ϕ i)) : Function.Injective (noncommPiCoprod ϕ hcomm) := by
  classical
    apply (MonoidHom.ker_eq_bot_iff _).mp
    apply eq_bot_iff.mpr
    intro f heq1
    have : ∀ i, i ∈ Finset.univ → ϕ i (f i) = 1 :=
      Subgroup.eq_one_of_noncommProd_eq_one_of_independent _ _ (fun _ _ _ _ h => hcomm _ _ h _ _)
        _ hind (by simp) heq1
    ext i
    apply hinj
    simp [this i (Finset.mem_univ i)]
#align monoid_hom.injective_noncomm_pi_coprod_of_independent MonoidHom.injective_noncommPiCoprod_of_independent
#align add_monoid_hom.injective_noncomm_pi_coprod_of_independent AddMonoidHom.injective_noncommPiCoprod_of_independent

variable (hcomm)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `969d03bb0764b7f983e73ecef3278aee6e08a2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
