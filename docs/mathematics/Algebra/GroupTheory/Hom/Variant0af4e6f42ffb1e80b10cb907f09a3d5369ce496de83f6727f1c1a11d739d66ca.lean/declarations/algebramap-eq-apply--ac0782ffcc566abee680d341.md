# algebraMap_eq_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77d510cf-bb00-aeb7-dbea-6bf8d978607e",
  "kind": "theorem",
  "lexical_name": "algebraMap_eq_apply",
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
  "slug": "algebramap-eq-apply--ac0782ffcc566abee680d341",
  "source": {
    "blob": "9425caa04e9fdcb026cb0a9fcfc946b20388b018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 456,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac0782ffcc566abee680d341558a5442d66e90f6172733e793c05264e79f2f63",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77d510cf-bb00-aeb7-dbea-6bf8d978607e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_eq_apply (f : A →ₐ[R] B) {y : R} {x : A} (h : algebraMap R A y = x) :
    algebraMap R B y = f x :=
  h ▸ (f.commutes _).symm
#align alg_hom.algebra_map_eq_apply AlgHom.algebraMap_eq_apply

end Semiring

section CommSemiring

variable [CommSemiring R] [CommSemiring A] [CommSemiring B]

variable [Algebra R A] [Algebra R B] (φ : A →ₐ[R] B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9425caa04e9fdcb026cb0a9fcfc946b20388b018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
