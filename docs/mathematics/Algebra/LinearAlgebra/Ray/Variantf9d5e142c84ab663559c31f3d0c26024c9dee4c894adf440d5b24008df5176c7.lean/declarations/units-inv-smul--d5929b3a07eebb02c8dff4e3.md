# units_inv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc3ac441c34d11fca1c78983a9d0cb1b60b06143",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14b136df-4534-5142-f74a-abbf40c00896",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7cf1652-3f87-520f-a16c-6b7b28306305",
  "kind": "theorem",
  "lexical_name": "units_inv_smul",
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
  "slug": "units-inv-smul--d5929b3a07eebb02c8dff4e3",
  "source": {
    "blob": "cc3ac441c34d11fca1c78983a9d0cb1b60b06143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 518,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5929b3a07eebb02c8dff4e37052c457cbc14f2e52d2b5f872798e9f15a65bfc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7cf1652-3f87-520f-a16c-6b7b28306305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem units_inv_smul (u : Rˣ) (v : Module.Ray R M) : u⁻¹ • v = u • v :=
  have := mul_self_pos.2 u.ne_zero
  calc
    u⁻¹ • v = (u * u) • u⁻¹ • v := Eq.symm <| (u⁻¹ • v).units_smul_of_pos _ (by exact this)
    _ = u • v := by rw [mul_smul, smul_inv_smul]
#align units_inv_smul units_inv_smul

section

variable [NoZeroSMulDivisors R M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3ac441c34d11fca1c78983a9d0cb1b60b06143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
