# omega_reduced_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a575bf2e-c86d-d187-bc99-bae02a8bb006",
  "kind": "theorem",
  "lexical_name": "omega_reduced_primitive",
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
  "slug": "omega-reduced-primitive--9ef3fe2c2a8fdc2b49ea8213",
  "source": {
    "blob": "5584866341f069a616c24df73eaa7b0854d33f04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ef3fe2c2a8fdc2b49ea82136a9fd01401fef651b7a892d531f76714ac758f5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a575bf2e-c86d-d187-bc99-bae02a8bb006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omega_reduced_primitive (P : Ideal O) [P.IsMaximal] (hgood : lambda∉P) :
    IsPrimitiveRoot (Ideal.Quotient.mk P omega) 3 := by
  let : Field (O⧸P) := Ideal.Quotient.field P
  let ρ : O→+*O⧸P := Ideal.Quotient.mk P
  have hpow : (ρ omega)^3=1 := by
    rw [←map_pow,omega_primitive.pow_eq_one,map_one]
  have hne : ρ omega≠1 := by
    intro he
    apply hgood
    have hz : ρ (omega-1)=0 := by rw [map_sub,he,map_one,sub_self]
    exact Ideal.Quotient.eq_zero_iff_mem.mp hz
  apply IsPrimitiveRoot.mk_of_lt _ (by decide) hpow
  intro l hl0 hl3
  have hl : l=1 ∨ l=2 := by omega
  rcases hl with rfl|rfl
  · simpa using hne
  · intro h2
    apply hne
    calc
      ρ omega=(ρ omega)^2*ρ omega := by rw [h2,one_mul]
      _ =(ρ omega)^3 := by ring
      _ =1 := hpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5584866341f069a616c24df73eaa7b0854d33f04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
