# gradeBy.gradedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62823cff569d9eaaf8d314f9969505d66c229cc482e172a13c44dba6e30fc429",
  "kind": "instance",
  "lexical_name": "gradeBy.gradedAlgebra",
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
  "slug": "gradeby-gradedalgebra--908e32789daa350eef01dc59",
  "source": {
    "blob": "76193752fbd1fe12a5fd0d75285b0facc52bb01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:908e32789daa350eef01dc593d4fbbc8adfc53c89d2655c1f80e5a11712d0739",
  "verification": {
    "reference": "docs/verification/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62823cff569d9eaaf8d314f9969505d66c229cc482e172a13c44dba6e30fc429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance gradeBy.gradedAlgebra : GradedAlgebra (gradeBy R f) :=
  GradedAlgebra.ofAlgHom _ (decomposeAux f)
    (by
      ext : 2
      simp only [MonoidHom.coe_comp, MonoidHom.coe_coe, AlgHom.coe_comp, Function.comp_apply,
        of_apply, AlgHom.coe_id, id_eq]
      rw [decomposeAux_single, DirectSum.coeAlgHom_of, Subtype.coe_mk])
    fun i x => by rw [decomposeAux_coe f x]

-- Lean can't find this later without us repeating it
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76193752fbd1fe12a5fd0d75285b0facc52bb01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
