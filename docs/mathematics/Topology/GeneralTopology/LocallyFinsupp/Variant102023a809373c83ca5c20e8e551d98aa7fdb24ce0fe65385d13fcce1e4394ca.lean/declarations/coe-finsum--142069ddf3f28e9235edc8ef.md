# coe_finsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5df1161f-a6ca-f50f-dd64-17e45ee90947",
  "kind": "lemma",
  "lexical_name": "coe_finsum",
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
  "slug": "coe-finsum--142069ddf3f28e9235edc8ef",
  "source": {
    "blob": "c5394dffe84e46308403f7c1aa4a3de9343beb42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142069ddf3f28e9235edc8efba8d710840647027a67349d84e347e5336652e70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5df1161f-a6ca-f50f-dd64-17e45ee90947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coe_finsum {ι : Type*} {F : ι → locallyFinsuppWithin U ℤ} :
    (↑(∑ᶠ i, F i) : X → ℤ) = ∑ᶠ i, (F i : X → ℤ) := by
  have : F.support = (fun i ↦ (F i : X → ℤ)).support := by
    simp [Set.ext_iff, DFunLike.ext_iff, funext_iff]
  by_cases h : F.support.Finite
  · rw [finsum_eq_sum F h, Function.locallyFinsuppWithin.coe_sum]
    have h₂ : (fun i ↦ (F i : X → ℤ)).support.Finite := by simp_all
    simp_all [finsum_eq_sum _ h₂]
  · simp_all [finsum_of_infinite_support]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant102023a809373c83ca5c20e8e551d98aa7fdb24ce0fe65385d13fcce1e4394ca.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5394dffe84e46308403f7c1aa4a3de9343beb42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
