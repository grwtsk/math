# norm_coe_unitary_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4778db7-0d92-dfc6-30b6-845ec08b41b4",
  "kind": "theorem",
  "lexical_name": "norm_coe_unitary_mul",
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
  "slug": "norm-coe-unitary-mul--0f63c2725756d0f698532a07",
  "source": {
    "blob": "87ff5b83abdf3cd7ed7a17ad4ff03f6e868bc3be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 214,
    "path": "GRWTSK/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f63c2725756d0f698532a07641c5c01daa9bda000c6ca20a2e296a831981768",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4778db7-0d92-dfc6-30b6-845ec08b41b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_coe_unitary_mul (U : unitary E) (A : E) : ‖(U : E) * A‖ = ‖A‖ := by
  nontriviality E
  refine le_antisymm ?_ ?_
  · calc
      _ ≤ ‖(U : E)‖ * ‖A‖ := norm_mul_le _ _
      _ = ‖A‖ := by rw [norm_coe_unitary, one_mul]
  · calc
      _ = ‖(U : E)⋆ * U * A‖ := by rw [unitary.coe_star_mul_self U, one_mul]
      _ ≤ ‖(U : E)⋆‖ * ‖(U : E) * A‖ := by
        rw [mul_assoc]
        exact norm_mul_le _ _
      _ = ‖(U : E) * A‖ := by rw [norm_star, norm_coe_unitary, one_mul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ff5b83abdf3cd7ed7a17ad4ff03f6e868bc3be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
