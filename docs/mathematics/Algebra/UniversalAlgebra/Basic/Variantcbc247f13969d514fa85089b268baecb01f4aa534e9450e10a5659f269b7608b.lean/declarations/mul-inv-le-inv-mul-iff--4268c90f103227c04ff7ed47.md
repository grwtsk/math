# mul_inv_le_inv_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c28032c7ea284e0d7a0a47b61977c696f7cacdb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbc247f13969d514fa85089b268baecb01f4aa534e9450e10a5659f269b7608b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfb31904-43d1-6f6c-1fa9-9d0df20eca83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca21b5b0-0742-533a-5a07-d4f47f5810ab",
  "kind": "theorem",
  "lexical_name": "mul_inv_le_inv_mul_iff",
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
  "slug": "mul-inv-le-inv-mul-iff--4268c90f103227c04ff7ed47",
  "source": {
    "blob": "c28032c7ea284e0d7a0a47b61977c696f7cacdb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 232,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcbc247f13969d514fa85089b268baecb01f4aa534e9450e10a5659f269b7608b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4268c90f103227c04ff7ed4719de17252c0aec58734596563eaa032e7901e9af",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantcbc247f13969d514fa85089b268baecb01f4aa534e9450e10a5659f269b7608b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca21b5b0-0742-533a-5a07-d4f47f5810ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv_le_inv_mul_iff : a * b⁻¹ ≤ d⁻¹ * c ↔ d * a ≤ c * b := by
  rw [← mul_le_mul_iff_left d, ← mul_le_mul_iff_right b, mul_inv_cancel_left, mul_assoc,
    inv_mul_cancel_right]

end MulLeftMono_MulRightMono

section MulLeftStrictMono_MulRightStrictMono

variable [LT α] [MulLeftStrictMono α] {a b c d : α}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantcbc247f13969d514fa85089b268baecb01f4aa534e9450e10a5659f269b7608b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcbc247f13969d514fa85089b268baecb01f4aa534e9450e10a5659f269b7608b.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c28032c7ea284e0d7a0a47b61977c696f7cacdb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
