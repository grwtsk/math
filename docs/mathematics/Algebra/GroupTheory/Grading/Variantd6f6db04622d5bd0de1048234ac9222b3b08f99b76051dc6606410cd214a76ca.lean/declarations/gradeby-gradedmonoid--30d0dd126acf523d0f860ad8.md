# gradeBy.gradedMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fc248242e1e94da4713b50d209ff1e741585b1f0cc7df696b3a7e7ec8df10c3",
  "kind": "instance",
  "lexical_name": "gradeBy.gradedMonoid",
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
  "slug": "gradeby-gradedmonoid--30d0dd126acf523d0f860ad8",
  "source": {
    "blob": "63bd96a03ca8ff0956814d451e5654bd03a9ed58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30d0dd126acf523d0f860ad89efecdc557f5661b6dab8edbb60c415f2cebf985",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fc248242e1e94da4713b50d209ff1e741585b1f0cc7df696b3a7e7ec8df10c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance gradeBy.gradedMonoid [AddMonoid M] [AddMonoid ι] [CommSemiring R] (f : M →+ ι) :
    SetLike.GradedMonoid (gradeBy R f : ι → Submodule R (AddMonoidAlgebra R M)) where
  one_mem m h := by
    rw [one_def] at h
    by_cases H : (1 : R) = (0 : R)
    · rw [H, single, Finsupp.single_zero] at h
      cases h
    · rw [Finsupp.support_single_ne_zero _ H, Finset.mem_singleton] at h
      rw [h, AddMonoidHom.map_zero]
  mul_mem i j a b ha hb c hc := by
    set h := support_mul a b hc
    simp only [Finset.mem_biUnion] at h
    rcases h with ⟨ma, ⟨hma, ⟨mb, ⟨hmb, hmc⟩⟩⟩⟩
    rw [← ha ma hma, ← hb mb hmb, Finset.mem_singleton.mp hmc]
    apply AddMonoidHom.map_add
#align add_monoid_algebra.grade_by.graded_monoid AddMonoidAlgebra.gradeBy.gradedMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63bd96a03ca8ff0956814d451e5654bd03a9ed58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
