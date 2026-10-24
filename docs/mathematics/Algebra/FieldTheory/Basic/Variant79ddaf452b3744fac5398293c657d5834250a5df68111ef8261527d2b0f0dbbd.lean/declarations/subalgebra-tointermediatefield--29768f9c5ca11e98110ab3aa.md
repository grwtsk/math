# Subalgebra.toIntermediateField'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:539b39562571b6d657030ff30e25909579007bbeb84a8d18caf7f9effd45e759",
  "kind": "def",
  "lexical_name": "Subalgebra.toIntermediateField'",
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
  "slug": "subalgebra-tointermediatefield--29768f9c5ca11e98110ab3aa",
  "source": {
    "blob": "a69559675ab7ebf209bc5771990976775dc93d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 272,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29768f9c5ca11e98110ab3aa363f0ac101b9b6e6ac4a838f0da7391467331ecf",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:539b39562571b6d657030ff30e25909579007bbeb84a8d18caf7f9effd45e759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subalgebra.toIntermediateField' (S : Subalgebra K L) (hS : IsField S) : IntermediateField K L :=
  S.toIntermediateField fun x hx => by
    by_cases hx0 : x = 0
    · rw [hx0, inv_zero]
      exact S.zero_mem
    letI hS' := hS.toField
    obtain ⟨y, hy⟩ := hS.mul_inv_cancel (show (⟨x, hx⟩ : S) ≠ 0 from Subtype.coe_ne_coe.1 hx0)
    rw [Subtype.ext_iff, S.coe_mul, S.coe_one, Subtype.coe_mk, mul_eq_one_iff_inv_eq₀ hx0] at hy
    exact hy.symm ▸ y.2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a69559675ab7ebf209bc5771990976775dc93d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
