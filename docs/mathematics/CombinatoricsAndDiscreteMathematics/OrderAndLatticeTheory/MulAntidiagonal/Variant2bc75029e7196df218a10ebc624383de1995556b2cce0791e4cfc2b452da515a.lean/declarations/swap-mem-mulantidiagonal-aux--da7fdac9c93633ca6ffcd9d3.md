# swap_mem_mulAntidiagonal_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bae7e062-5c71-2140-2121-ec38ca32d939",
  "kind": "theorem",
  "lexical_name": "swap_mem_mulAntidiagonal_aux",
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
  "slug": "swap-mem-mulantidiagonal-aux--da7fdac9c93633ca6ffcd9d3",
  "source": {
    "blob": "770530c198c04ea5e8195b3b25fee39ad4959e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da7fdac9c93633ca6ffcd9d39ada93a9c0f9ddc8cb430396ad8216ed4b9cc1b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bae7e062-5c71-2140-2121-ec38ca32d939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swap_mem_mulAntidiagonal_aux [CommMagma α] {s t : Set α} {a : α} {x : α × α} :
    x.snd ∈ s ∧ x.fst ∈ t ∧ x.snd * x.fst = a
      ↔ x ∈ Set.mulAntidiagonal t s a := by
  simp [mul_comm, and_left_comm]


namespace MulAntidiagonal

section CancelCommMonoid

variable [CommMonoid α] [IsCancelMul α] {s t : Set α} {a : α} {x y : mulAntidiagonal s t a}

-- We have to translate the names manually because the namespace name `MulAntidiagonal`
-- does not match the declaration `mulAntidiagonal` that has the `to_additive` attribute.
@[to_additive Set.AddAntidiagonal.fst_eq_fst_iff_snd_eq_snd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variant2bc75029e7196df218a10ebc624383de1995556b2cce0791e4cfc2b452da515a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `770530c198c04ea5e8195b3b25fee39ad4959e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
