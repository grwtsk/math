# _root_.GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b.Function.noZeroSMulDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d54cb976b113023e0c86afd7d67e975be437d3463c87da229f33d48f48687dec",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b.Function.noZeroSMulDivisors",
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
  "slug": "root-grwtsk-algebra-universalalgebra-nozerosmuldivisors-variantd4a54f715--a1c25478e1a56363edb7d16b",
  "source": {
    "blob": "e52104775ef709e071c6163aa15d87db259fb720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 40,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant1e141d6d3cb0e28886cb5782d9e68e64d8d8da6d3b76fb752b0ac75a24263ab9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1c25478e1a56363edb7d16b1d7ebe2453e1279d2e63db201de5c337f7109787",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variant1e141d6d3cb0e28886cb5782d9e68e64d8d8da6d3b76fb752b0ac75a24263ab9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d54cb976b113023e0c86afd7d67e975be437d3463c87da229f33d48f48687dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b.Function.noZeroSMulDivisors {ι α β : Type*} [Zero α] [Zero β]
    [SMulWithZero α β] [NoZeroSMulDivisors α β] : NoZeroSMulDivisors α (ι → β) :=
  Pi.noZeroSMulDivisors _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variant1e141d6d3cb0e28886cb5782d9e68e64d8d8da6d3b76fb752b0ac75a24263ab9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variant1e141d6d3cb0e28886cb5782d9e68e64d8d8da6d3b76fb752b0ac75a24263ab9.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52104775ef709e071c6163aa15d87db259fb720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
