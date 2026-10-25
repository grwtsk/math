# nf_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35e197c0e2927ff110c989b87c98b4aa1bd5bd59a3f392adcac52e935f203640",
  "kind": "instance",
  "lexical_name": "nf_opow",
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
  "slug": "nf-opow--fdb457eecc173920a4a164d1",
  "source": {
    "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 740,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdb457eecc173920a4a164d19af229b722491d843b0572ce4354f59112376ec0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35e197c0e2927ff110c989b87c98b4aa1bd5bd59a3f392adcac52e935f203640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nf_opow (o₁ o₂) [NF o₁] [NF o₂] : NF (o₁ ^ o₂) := by
  rcases e₁ : split o₁ with ⟨a, m⟩
  have na := (nf_repr_split e₁).1
  rcases e₂ : split' o₂ with ⟨b', k⟩
  have := (nf_repr_split' e₂).1
  obtain - | ⟨a0, n, a'⟩ := a
  · rcases m with - | m
    · cases o₂
      · simp only [(· ^ ·), Pow.pow, opow, opowAux2, e₁, OfNat.ofNat, Zero.zero, One.one]
        decide
      · simp only [(· ^ ·), Pow.pow, opow, opowAux2, e₁, OfNat.ofNat, Zero.zero, One.one,
          reduceCtorEq, ite_false]
        exact NF.zero
    · cases m <;> simp only [(· ^ ·), Pow.pow, opow, opowAux2, OfNat.ofNat, Zero.zero,
        One.one, *]
      · decide
      · change NF (oadd _ _ 0)
        infer_instance
  · simp only [(· ^ ·), Pow.pow, opow, opowAux2, e₁, split_eq_scale_split' e₂, mulNat_eq_mul]
    have := na.fst
    cases k <;> cases m <;> infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d332225fdc11aed6ef487342848c15bedf4c12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
