# RingEquiv.euclideanDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34cc4801cb01954f34954409f8f7f2517d6d54e1d5b6d5006fa4bc9bd8e196e9",
  "kind": "abbrev",
  "lexical_name": "RingEquiv.euclideanDomain",
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
  "slug": "ringequiv-euclideandomain--85d76f771da9228028ed674c",
  "source": {
    "blob": "97d61caa997e3ccd59facebbf086d592a268dbe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 431,
    "path": "GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85d76f771da9228028ed674c9ded8491f47f2cf245207c9170c70c67a59f1ebc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34cc4801cb01954f34954409f8f7f2517d6d54e1d5b6d5006fa4bc9bd8e196e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev RingEquiv.euclideanDomain (e : S ≃+* R) : EuclideanDomain S where
  toNontrivial := e.nontrivial
  quotient a b := e.symm (e a / e b)
  remainder a b := e.symm (e a % e b)
  r a b := EuclideanDomain.r (e a) (e b)
  r_wellFounded := InvImage.wf e EuclideanDomain.r_wellFounded
  quotient_zero a := by simp
  quotient_mul_add_remainder_eq a b := by
    apply e.injective
    simpa using! EuclideanDomain.quotient_mul_add_remainder_eq (e a) (e b)
  remainder_lt a b hb := by
    have hb' : e b ≠ 0 := by simpa using hb
    simpa using! EuclideanDomain.remainder_lt (e a) hb'
  mul_left_not_lt a b hb := by
    have hb' : e b ≠ 0 := by simpa using hb
    simpa using! EuclideanDomain.mul_left_not_lt (e a) hb'

end RingEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d61caa997e3ccd59facebbf086d592a268dbe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
