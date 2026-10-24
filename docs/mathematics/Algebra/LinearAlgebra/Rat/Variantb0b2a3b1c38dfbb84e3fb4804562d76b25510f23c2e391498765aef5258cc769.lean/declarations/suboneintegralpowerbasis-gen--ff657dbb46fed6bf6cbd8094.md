# subOneIntegralPowerBasis_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4748e95-8c89-ddfb-a4ed-5c406539b84e",
  "kind": "theorem",
  "lexical_name": "subOneIntegralPowerBasis_gen",
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
  "slug": "suboneintegralpowerbasis-gen--ff657dbb46fed6bf6cbd8094",
  "source": {
    "blob": "6cf5556e9c02bae1f6e14da81db9028f7fe55398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 263,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff657dbb46fed6bf6cbd8094ca2511429b2eead8b18993979a2f5bd70fc0af3e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4748e95-8c89-ddfb-a4ed-5c406539b84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subOneIntegralPowerBasis_gen [IsCyclotomicExtension {p ^ k} ℚ K]
    (hζ : IsPrimitiveRoot ζ ↑(p ^ k)) :
    hζ.subOneIntegralPowerBasis.gen =
      ⟨ζ - 1, Subalgebra.sub_mem _ (hζ.isIntegral (p ^ k).pos) (Subalgebra.one_mem _)⟩ :=
  by simp [subOneIntegralPowerBasis]
#align is_primitive_root.sub_one_integral_power_basis_gen IsPrimitiveRoot.subOneIntegralPowerBasis_gen

/-- The integral `PowerBasis` of `𝓞 K` given by `ζ - 1`, where `K` is a `p`-th cyclotomic
extension of `ℚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variantb0b2a3b1c38dfbb84e3fb4804562d76b25510f23c2e391498765aef5258cc769.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf5556e9c02bae1f6e14da81db9028f7fe55398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
