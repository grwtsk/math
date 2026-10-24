# one_antipode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95c699e3-c7e3-4272-afc8-5da0219c0a8e",
  "kind": "theorem",
  "lexical_name": "one_antipode",
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
  "slug": "one-antipode--193d1c79e823758644ceea2b",
  "source": {
    "blob": "05e092319b760c3557eaa999efeb961c644b14af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193d1c79e823758644ceea2bf943e0e6f2bdef15928adf5d2d37cf90c6fed615",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c699e3-c7e3-4272-afc8-5da0219c0a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_antipode (A : Hopf_ C) : A.X.X.one ≫ A.antipode = A.X.X.one := by
  have := (rfl : A.X.X.one ≫ A.X.comul.hom ≫ (A.antipode ▷ A.X.X.X) ≫ A.X.X.mul = _)
  conv at this =>
    rhs
    rw [A.antipode_left]
  rw [A.X.one_comul_assoc, tensorHom_def, Category.assoc, whisker_exchange_assoc] at this
  simpa [unitors_inv_equal]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e092319b760c3557eaa999efeb961c644b14af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
