# mvPolynomialQuotientEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01319220-b2bf-25c9-f8b9-c8e1a707b283",
  "kind": "lemma",
  "lexical_name": "mvPolynomialQuotientEquiv_apply",
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
  "slug": "mvpolynomialquotientequiv-apply--5f9908ae610fb5101c39695b",
  "source": {
    "blob": "5629cf9f4cd5dc40b9c598888a4616a5fbfae624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f9908ae610fb5101c39695bed83f69e548e0d546fdb1c2d63a471248f0a4c55",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01319220-b2bf-25c9-f8b9-c8e1a707b283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mvPolynomialQuotientEquiv_apply (p : MvPolynomial Unit R) :
    mvPolynomialQuotientEquiv S r (Ideal.Quotient.mk _ p) = aeval (S₁ := S) (fun _ ↦ invSelf r) p :=
  rfl

end IsLocalization.Away
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629cf9f4cd5dc40b9c598888a4616a5fbfae624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
