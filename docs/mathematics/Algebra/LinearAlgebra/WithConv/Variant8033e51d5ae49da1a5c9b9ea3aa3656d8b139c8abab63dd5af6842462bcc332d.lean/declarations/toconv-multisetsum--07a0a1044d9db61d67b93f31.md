# toConv_multisetSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2bcf159-fb64-1215-623b-dab98a2c9e57",
  "kind": "lemma",
  "lexical_name": "toConv_multisetSum",
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
  "slug": "toconv-multisetsum--07a0a1044d9db61d67b93f31",
  "source": {
    "blob": "131bea49a69748ae86d0b99a8296a905d132fdef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07a0a1044d9db61d67b93f3123a3554b07beefb210fde26e03a370181a58226e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2bcf159-fb64-1215-623b-dab98a2c9e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toConv_multisetSum (s : Multiset A) :
    toConv s.sum = (s.map toConv).sum := map_multiset_sum (WithConv.addEquiv _).symm _

section
variable [Semiring R] [Module R A] [AddCommMonoid B] [Module R B]

/-- Lift a linear equivalence between `A` and `B` to `WithConv A` and `WithConv B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131bea49a69748ae86d0b99a8296a905d132fdef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
