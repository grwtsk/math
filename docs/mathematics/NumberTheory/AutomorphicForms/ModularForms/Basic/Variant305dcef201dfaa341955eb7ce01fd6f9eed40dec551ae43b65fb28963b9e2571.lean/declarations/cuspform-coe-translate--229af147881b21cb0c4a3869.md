# CuspForm.coe_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57a28933-2d7b-43c0-56ec-92d8d529cca8",
  "kind": "lemma",
  "lexical_name": "CuspForm.coe_translate",
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
  "slug": "cuspform-coe-translate--229af147881b21cb0c4a3869",
  "source": {
    "blob": "307693d94d4781c722f741cfe13d33af53f8ebf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 695,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:229af147881b21cb0c4a386944a4347551f89c1ffd0cc02aeda18ea34c72c038",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57a28933-2d7b-43c0-56ec-92d8d529cca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CuspForm.coe_translate [CuspFormClass F Γ k] (g : SL(2, ℤ)) :
    translate f g = ⇑f ∣[k] g :=
  rfl

end translate

section SL2Z

open ModularForm OnePoint

variable {k F} {Γ : Subgroup (GL (Fin 2) ℝ)} [FunLike F ℍ ℂ] (f : F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant305dcef201dfaa341955eb7ce01fd6f9eed40dec551ae43b65fb28963b9e2571.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307693d94d4781c722f741cfe13d33af53f8ebf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
