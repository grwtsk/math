# one_lt_absNorm_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53cb9f4b-e0e7-dc53-a34f-5d963817ad20",
  "kind": "lemma",
  "lexical_name": "one_lt_absNorm_nnreal",
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
  "slug": "one-lt-absnorm-nnreal--a8e3109a84efa0177aa71fc4",
  "source": {
    "blob": "4b816975828aea26d5b9815ba628175d029a6e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e3109a84efa0177aa71fc471f151cc18445d0ba4b79f6235a63cfd2c64e27c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53cb9f4b-e0e7-dc53-a34f-5d963817ad20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_lt_absNorm_nnreal : 1 < (absNorm v.asIdeal : NNReal) := mod_cast one_lt_absNorm v

@[deprecated (since := "2025-02-28")] alias one_lt_norm_nnreal := one_lt_absNorm_nnreal

/-- The norm of a maximal ideal as an element of `ℝ≥0` is `≠ 0` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b816975828aea26d5b9815ba628175d029a6e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
