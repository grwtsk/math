# Algebra.trace_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bd3a93b-f1c8-245c-54a2-d399236c246f",
  "kind": "theorem",
  "lexical_name": "Algebra.trace_localization",
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
  "slug": "algebra-trace-localization--ae89b06d014d65a8699635a6",
  "source": {
    "blob": "875ae934807ff0db96bc12f07888d7aa55b897e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 88,
    "path": "GRWTSK/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae89b06d014d65a8699635a6a4c01dced90dc569ab833a75cd0a65c70b5fb9dc",
  "verification": {
    "reference": "docs/verification/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bd3a93b-f1c8-245c-54a2-d399236c246f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.trace_localization [Module.Free R S] [Module.Finite R S] (a : S) :
    Algebra.trace Rₘ Sₘ (algebraMap S Sₘ a) = algebraMap R Rₘ (Algebra.trace R S a) := by
  cases subsingleton_or_nontrivial R
  · haveI : Subsingleton Rₘ := Module.subsingleton R Rₘ
    simp [eq_iff_true_of_subsingleton]
  let b := Module.Free.chooseBasis R S
  letI := Classical.decEq (Module.Free.ChooseBasisIndex R S)
  rw [Algebra.trace_eq_matrix_trace (b.localizationLocalization Rₘ M Sₘ),
    Algebra.trace_eq_matrix_trace b, ← Algebra.map_leftMulMatrix_localization]
  exact (AddMonoidHom.map_trace (algebraMap R Rₘ).toAddMonoidHom _).symm

section LocalizationLocalization

variable (Sₘ : Type*) [CommRing Sₘ] [Algebra S Sₘ] [Algebra Rₘ Sₘ] [Algebra R Sₘ]
variable [IsScalarTower R Rₘ Sₘ] [IsScalarTower R S Sₘ]
variable [IsLocalization (Algebra.algebraMapSubmonoid S M) Sₘ]
variable {ι : Type*} [Fintype ι] [DecidableEq ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875ae934807ff0db96bc12f07888d7aa55b897e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
