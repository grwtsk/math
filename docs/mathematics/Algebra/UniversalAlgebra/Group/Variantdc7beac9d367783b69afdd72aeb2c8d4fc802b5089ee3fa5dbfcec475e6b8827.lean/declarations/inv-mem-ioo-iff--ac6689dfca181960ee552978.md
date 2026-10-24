# inv_mem_Ioo_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:070070ba-f2bc-8b64-3d26-29d2fa181b41",
  "kind": "theorem",
  "lexical_name": "inv_mem_Ioo_iff",
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
  "slug": "inv-mem-ioo-iff--ac6689dfca181960ee552978",
  "source": {
    "blob": "eeea64d85b5b79bc06559f492bcd3e85bbc70a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 54,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac6689dfca181960ee552978723c7a47308388461cd91d6605efa8af8dee0ddb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:070070ba-f2bc-8b64-3d26-29d2fa181b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_mem_Ioo_iff : a⁻¹ ∈ Set.Ioo c d ↔ a ∈ Set.Ioo d⁻¹ c⁻¹ :=
  and_comm.trans <| and_congr inv_lt' lt_inv'
#align set.inv_mem_Ioo_iff Set.inv_mem_Ioo_iff
#align set.neg_mem_Ioo_iff Set.neg_mem_Ioo_iff

end OrderedCommGroup

section OrderedAddCommGroup

variable [OrderedAddCommGroup α] {a b c d : α}

/-! `add_mem_Ixx_iff_left` -/


-- Porting note: instance search needs help `(α := α)`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeea64d85b5b79bc06559f492bcd3e85bbc70a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
