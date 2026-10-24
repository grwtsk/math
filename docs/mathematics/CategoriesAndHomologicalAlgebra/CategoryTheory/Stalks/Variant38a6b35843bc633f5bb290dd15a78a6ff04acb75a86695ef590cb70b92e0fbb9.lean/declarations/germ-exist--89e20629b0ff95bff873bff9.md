# germ_exist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2106d06-9784-adcd-c77d-fe77b8e2c475",
  "kind": "theorem",
  "lexical_name": "germ_exist",
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
  "slug": "germ-exist--89e20629b0ff95bff873bff9",
  "source": {
    "blob": "ccd349bd1003876841689780e0fe453c4ff911a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 414,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89e20629b0ff95bff873bff9d282771d81fdca4361dbe33008fb7bdb841dc508",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2106d06-9784-adcd-c77d-fe77b8e2c475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem germ_exist (F : X.Presheaf C) (x : X) (t : ToType (stalk.{v, u} F x)) :
    ∃ (U : Opens X) (m : x ∈ U) (s : ToType (F.obj (op U))), F.germ _ x m s = t := by
  obtain ⟨U, s, e⟩ :=
    Types.jointly_surjective.{v, v} _ (isColimitOfPreserves (forget C) (colimit.isColimit _)) t
  revert s e
  induction U with | op U => ?_
  obtain ⟨V, m⟩ := U
  intro s e
  exact ⟨V, m, s, e⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd349bd1003876841689780e0fe453c4ff911a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
