# prod_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1192dfe8-b3ab-86ed-e778-b38887b7ec31",
  "kind": "lemma",
  "lexical_name": "prod_eq_zero_iff",
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
  "slug": "prod-eq-zero-iff--1aed7b3bc63ad3c0a5d31e6d",
  "source": {
    "blob": "c80d96d78d43a194f28ba3adec043166db0435cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 70,
    "path": "GRWTSK/Algebra/UniversalAlgebra/List/Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aed7b3bc63ad3c0a5d31e6d9437a013439a2ec13a660358d88ac7958e43b705",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/List/Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1192dfe8-b3ab-86ed-e778-b38887b7ec31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma prod_eq_zero_iff : ∀ {l : List M₀}, l.prod = 0 ↔ (0 : M₀) ∈ l
  | [] => by simp
  | a :: l => by rw [prod_cons, mul_eq_zero, prod_eq_zero_iff, mem_cons, eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/List/Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/List/Variantc95169c5e1343ca1c9eeed9865c90c784a365abce8e762319bb1cc4ab4dc8778.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80d96d78d43a194f28ba3adec043166db0435cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
