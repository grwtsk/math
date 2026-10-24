# toMultiplicativeBialgEquiv_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daf4b309-8b1d-8c4c-5d9d-2e3e50629e0a",
  "kind": "lemma",
  "lexical_name": "toMultiplicativeBialgEquiv_single",
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
  "slug": "tomultiplicativebialgequiv-single--0cee763d6b36ad8b53395c39",
  "source": {
    "blob": "9768d1bb74c602c76bba0c123336a06e54408c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 381,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cee763d6b36ad8b53395c39814b502f9b1b5deed4618c80d3caa6411f83e88a",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daf4b309-8b1d-8c4c-5d9d-2e3e50629e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toMultiplicativeBialgEquiv_single (m : M) (a : A) :
    toMultiplicativeBialgEquiv R A M (single m a) = .single (.ofAdd m) a := by
  simp [toMultiplicativeBialgEquiv]

end Semiring

section CommSemiring
variable [CommSemiring A] [Algebra R A] [AddMonoid M]

variable (R M A) in
/-- `AddMonoidAlgebra.lift` as a `MulEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9768d1bb74c602c76bba0c123336a06e54408c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
