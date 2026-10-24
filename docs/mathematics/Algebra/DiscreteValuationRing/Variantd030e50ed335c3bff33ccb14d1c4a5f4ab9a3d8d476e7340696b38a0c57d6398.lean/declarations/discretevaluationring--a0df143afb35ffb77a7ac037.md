# discreteValuationRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c69a6ea-1283-86a3-11d3-c87a7874bc64",
  "kind": "theorem",
  "lexical_name": "discreteValuationRing",
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
  "slug": "discretevaluationring--a0df143afb35ffb77a7ac037",
  "source": {
    "blob": "8280eb963e2b1d7ffde11cb0c0b9b28c979d0e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 171,
    "path": "GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0df143afb35ffb77a7ac037571c0b95deccd4fbf47e0545c299fb4cef8aca97",
  "verification": {
    "reference": "docs/verification/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c69a6ea-1283-86a3-11d3-c87a7874bc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteValuationRing : DiscreteValuationRing (𝕎 k) :=
  DiscreteValuationRing.ofHasUnitMulPowIrreducibleFactorization (by
    refine' ⟨p, irreducible p, fun {x} hx => _⟩
    obtain ⟨n, b, hb⟩ := exists_eq_pow_p_mul' x hx
    exact ⟨n, b, hb.symm⟩)
#align witt_vector.discrete_valuation_ring WittVector.discreteValuationRing

end PerfectField

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8280eb963e2b1d7ffde11cb0c0b9b28c979d0e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
