# inv_left_mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bba73a41-7079-51d4-4ba6-58fe4076f467",
  "kind": "theorem",
  "lexical_name": "inv_left_mul_aux",
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
  "slug": "inv-left-mul-aux--62d6539f5b9fd49bb75cd722",
  "source": {
    "blob": "a2314db3cf665be627014849ca498b9395b10916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d6539f5b9fd49bb75cd7225b1ee829e43ed5a7b12175e7de38c145c6040689",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba73a41-7079-51d4-4ba6-58fe4076f467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_left_mul_aux (hA : A ∈ symplecticGroup l R) : -(J l R * Aᵀ * J l R * A) = 1 :=
  calc
    -(J l R * Aᵀ * J l R * A) = (-J l R) * (Aᵀ * J l R * A) := by
      simp only [Matrix.mul_assoc, Matrix.neg_mul]
    _ = (-J l R) * J l R := by
      rw [mem_iff'] at hA
      rw [hA]
    _ = (-1 : R) • (J l R * J l R) := by simp only [Matrix.neg_mul, neg_smul, one_smul]
    _ = (-1 : R) • (-1 : Matrix _ _ _) := by rw [J_squared]
    _ = 1 := by simp only [neg_smul_neg, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant27c532dd05b81df3c73fc0ab2b05551d40e2dca35ecf8c568b5354824f6fe279.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2314db3cf665be627014849ca498b9395b10916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
