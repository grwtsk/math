# subset_mobius_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2943d15d-a916-56ad-4a54-b5c6048268b5",
  "kind": "theorem",
  "lexical_name": "subset_mobius_sign",
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
  "slug": "subset-mobius-sign--51e5021d289f023da3f6c0d2",
  "source": {
    "blob": "9117d4f052525efc1e21000bd35cb3ccea4d6579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51e5021d289f023da3f6c0d25b49aeecc7783adb3d7e66d569748559501653a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2943d15d-a916-56ad-4a54-b5c6048268b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_mobius_sign (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) :
    μ (∏ p ∈ s, p) = (-1 : ℤ) ^ s.card := by
  calc
    _ = ∏ p ∈ s, μ p := ArithmeticFunction.IsMultiplicative.map_prod_of_prime
      ArithmeticFunction.isMultiplicative_moebius s hs
    _ = ∏ _p ∈ s, (-1 : ℤ) :=
      Finset.prod_congr rfl (fun p hp => ArithmeticFunction.moebius_apply_prime (hs p hp))
    _ = _ := Finset.prod_const _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9117d4f052525efc1e21000bd35cb3ccea4d6579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
