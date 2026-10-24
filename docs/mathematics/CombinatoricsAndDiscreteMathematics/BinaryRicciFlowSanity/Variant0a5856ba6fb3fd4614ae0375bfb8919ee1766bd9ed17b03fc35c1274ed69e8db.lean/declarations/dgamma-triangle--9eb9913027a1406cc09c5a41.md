# dGamma_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0815a85-1d14-8ffe-ba89-adbf9e8dc2d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f6f1797-e28c-1df1-1723-b2fa9bac64b9",
  "kind": "theorem",
  "lexical_name": "dGamma_triangle",
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
  "slug": "dgamma-triangle--9eb9913027a1406cc09c5a41",
  "source": {
    "blob": "a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb9913027a1406cc09c5a41f4b4ac0c84d9effd52af111a9cd74720af00875e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6f1797-e28c-1df1-1723-b2fa9bac64b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dGamma_triangle
    (Γ : GammaWeight)
    (x y z : PaddedBitState) :
    dGamma Γ x z ≤ dGamma Γ x y + dGamma Γ y z := by
  let N := max (supportBound x) (max (supportBound y) (supportBound z))
  have hx : supportBound x ≤ N := le_max_left _ _
  have hy : supportBound y ≤ N := (le_max_left _ _).trans (le_max_right _ _)
  have hz : supportBound z ≤ N := (le_max_right _ _).trans (le_max_right _ _)
  rw [dGamma_eq_sum_range_of_supports_le Γ x z hx hz,
    dGamma_eq_sum_range_of_supports_le Γ x y hx hy,
    dGamma_eq_sum_range_of_supports_le Γ y z hy hz]
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_le_sum ?_
  intro i hi
  have hw : 0 ≤ Γ.w i := le_of_lt (Γ.pos i)
  have htri :
      |bitReal (x.1 i) - bitReal (z.1 i)| ≤
        |bitReal (x.1 i) - bitReal (y.1 i)| +
          |bitReal (y.1 i) - bitReal (z.1 i)| :=
    abs_sub_le (bitReal (x.1 i)) (bitReal (y.1 i)) (bitReal (z.1 i))
  calc
    Γ.w i * |bitReal (x.1 i) - bitReal (z.1 i)|
        ≤ Γ.w i *
            (|bitReal (x.1 i) - bitReal (y.1 i)| +
              |bitReal (y.1 i) - bitReal (z.1 i)|) :=
            mul_le_mul_of_nonneg_left htri hw
    _ =
        Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)| +
          Γ.w i * |bitReal (y.1 i) - bitReal (z.1 i)| := by
            ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
