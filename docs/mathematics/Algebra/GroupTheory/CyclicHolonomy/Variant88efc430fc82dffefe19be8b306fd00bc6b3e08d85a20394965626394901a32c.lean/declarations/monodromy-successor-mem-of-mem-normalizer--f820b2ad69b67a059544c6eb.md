# monodromy_successor_mem_of_mem_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0d9795b-8207-fb9a-1d62-7c5fcd7d9777",
  "kind": "theorem",
  "lexical_name": "monodromy_successor_mem_of_mem_normalizer",
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
  "slug": "monodromy-successor-mem-of-mem-normalizer--f820b2ad69b67a059544c6eb",
  "source": {
    "blob": "5271aff56c2493cef936719e00a6bf53503b36c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 288,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f820b2ad69b67a059544c6eb8b400ecb909f185327ebf4ab792f7e431370d95f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d9795b-8207-fb9a-1d62-7c5fcd7d9777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monodromy_successor_mem_of_mem_normalizer (system : StepSystem h)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3)) (p : CoverPhase h)
    (hmonodromy : monodromy system p ∈ G)
    (hstep : system.step p ∈ Subgroup.normalizer G) :
    monodromy system (successor h p) ∈ G := by
  have hconjugate :
      system.step p * monodromy system p * (system.step p)⁻¹ ∈ G :=
    (Subgroup.mem_normalizer_iff.mp hstep (monodromy system p)).mp hmonodromy
  have hinv : (system.step p)⁻¹ = (system.step p).symm := rfl
  rw [hinv] at hconjugate
  rw [monodromy_successor_eq_conjugate]
  simpa only [← LinearEquiv.mul_eq_trans] using hconjugate

/--
For a normal gauge subgroup, monodromy membership is automatically stable
under an adjacent change of base phase; no separate normalizer witness is
needed for the local transport.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5271aff56c2493cef936719e00a6bf53503b36c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
