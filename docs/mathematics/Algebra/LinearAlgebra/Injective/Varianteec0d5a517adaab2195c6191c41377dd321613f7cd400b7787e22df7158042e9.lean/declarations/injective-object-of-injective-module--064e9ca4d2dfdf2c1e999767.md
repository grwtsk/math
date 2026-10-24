# injective_object_of_injective_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30fc1798-8f77-f533-8b57-92edb1ceb22c",
  "kind": "theorem",
  "lexical_name": "injective_object_of_injective_module",
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
  "slug": "injective-object-of-injective-module--064e9ca4d2dfdf2c1e999767",
  "source": {
    "blob": "ddb87942d8d1cea0278c1bff73692362b2ded6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 28,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:064e9ca4d2dfdf2c1e999767dcee0e022cbff53d5cbf86f2d1b9457ec6b691aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30fc1798-8f77-f533-8b57-92edb1ceb22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_object_of_injective_module [inj : Injective R M] :
    CategoryTheory.Injective (ModuleCat.of R M) where
  factors g f m :=
    have ⟨l, h⟩ := inj.out f.hom ((ModuleCat.mono_iff_injective f).mp m) g.hom
    ⟨ModuleCat.ofHom l, by ext x; simpa using h x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Varianteec0d5a517adaab2195c6191c41377dd321613f7cd400b7787e22df7158042e9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddb87942d8d1cea0278c1bff73692362b2ded6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
