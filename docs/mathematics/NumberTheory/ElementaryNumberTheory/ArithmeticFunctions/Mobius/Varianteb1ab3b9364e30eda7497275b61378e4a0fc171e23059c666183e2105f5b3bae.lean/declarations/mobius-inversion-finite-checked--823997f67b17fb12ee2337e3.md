# mobius_inversion_finite_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d99cfa4922dc381e1a59f1483b135dcca977b44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f95349ff-13d0-16f8-08ac-e1b81897f20a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b9d2d85-283b-af97-6dea-6e4b85165633",
  "kind": "theorem",
  "lexical_name": "mobius_inversion_finite_checked",
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
  "slug": "mobius-inversion-finite-checked--823997f67b17fb12ee2337e3",
  "source": {
    "blob": "5d99cfa4922dc381e1a59f1483b135dcca977b44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 38,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823997f67b17fb12ee2337e3d6b3884945aeb31338f299579f7d1a5075fe6afe",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b9d2d85-283b-af97-6dea-6e4b85165633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_inversion_finite_checked
    {f g : ArithFn Int}
    (hfg :
      ∀ n, 0 < n →
        g n = ∑ d ∈ Nat.divisors n, f d) :
    ∀ n, 0 < n →
      f n = ∑ d ∈ Nat.divisors n, mobiusFn d * g (n / d) := by
  intro n hn
  have hsum :
      ∀ n > 0, (∑ d ∈ Nat.divisors n, f d) = g n := by
    intro m hm
    exact (hfg m hm).symm
  have hm :=
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq
      (R := Int)).mp hsum n hn
  have hm' :
      ∑ x ∈ n.divisorsAntidiagonal,
        mobiusFn x.1 * g x.2 = f n := by
    simpa [mobiusFn] using hm
  rw [Nat.sum_divisorsAntidiagonal
    (fun d e => mobiusFn d * g e)] at hm'
  exact hm'.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d99cfa4922dc381e1a59f1483b135dcca977b44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
