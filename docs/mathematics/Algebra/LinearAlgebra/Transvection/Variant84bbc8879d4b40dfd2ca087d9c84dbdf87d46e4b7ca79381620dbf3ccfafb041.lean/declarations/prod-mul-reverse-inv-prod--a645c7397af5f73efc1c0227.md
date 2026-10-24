# prod_mul_reverse_inv_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0793b25a-e8bd-fd6f-aeac-35fbee41dd07",
  "kind": "theorem",
  "lexical_name": "prod_mul_reverse_inv_prod",
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
  "slug": "prod-mul-reverse-inv-prod--a645c7397af5f73efc1c0227",
  "source": {
    "blob": "c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a645c7397af5f73efc1c02279ec58c15a7522b285cb1751b52a08e3ff28c201b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0793b25a-e8bd-fd6f-aeac-35fbee41dd07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_mul_reverse_inv_prod (L : List (TransvectionStruct n R)) :
    (L.map toMatrix).prod * (L.reverse.map (toMatrix ∘ TransvectionStruct.inv)).prod = 1 := by
  induction L with
  | nil => simp
  | cons t L IH =>
    suffices
      t.toMatrix *
            ((L.map toMatrix).prod * (L.reverse.map (toMatrix ∘ TransvectionStruct.inv)).prod) *
          t.inv.toMatrix = 1
      by simpa [Matrix.mul_assoc]
    simp_rw [IH, Matrix.mul_one, t.mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
