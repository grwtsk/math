# integerSetToAssociates_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:494e864b-f373-691e-31b3-a74dca8da008",
  "kind": "theorem",
  "lexical_name": "integerSetToAssociates_eq_iff",
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
  "slug": "integersettoassociates-eq-iff--51f1eab4958afee462dab7ef",
  "source": {
    "blob": "14937dc62d4fec76769bc748423b8cd19e70d07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 388,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f1eab4958afee462dab7ef21ed41482c25eaf1fd1e05da1a2778cf80041e46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494e864b-f373-691e-31b3-a74dca8da008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerSetToAssociates_eq_iff (a b : integerSet K) :
    integerSetToAssociates K a = integerSetToAssociates K b ↔
      ∃ ζ : torsion K, ζ • a = b := by
  simp_rw [integerSetToAssociates_apply, Associates.quotient_mk_eq_mk,
    Associates.mk_eq_mk_iff_associated, Associated, mul_comm, Subtype.ext_iff,
    RingOfIntegers.ext_iff, ← (mixedEmbedding_injective K).eq_iff, Submonoid.coe_mul, map_mul,
    mixedEmbedding_preimageOfMemIntegerSet, integerSetTorsionSMul_smul_coe]
  refine ⟨fun ⟨u, h⟩ ↦  ⟨⟨unitsNonZeroDivisorsEquiv u, ?_⟩, by simpa using h⟩,
    fun ⟨⟨u, _⟩, h⟩ ↦ ⟨unitsNonZeroDivisorsEquiv.symm u, by simpa using h⟩⟩
  exact (unit_smul_mem_iff_mem_torsion a.prop.1 _).mp (by simpa [h] using b.prop.1)

variable (K) in
/-- The equivalence between `integerSet K` modulo `torsion K` and `Associates (𝓞 K)⁰`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14937dc62d4fec76769bc748423b8cd19e70d07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
