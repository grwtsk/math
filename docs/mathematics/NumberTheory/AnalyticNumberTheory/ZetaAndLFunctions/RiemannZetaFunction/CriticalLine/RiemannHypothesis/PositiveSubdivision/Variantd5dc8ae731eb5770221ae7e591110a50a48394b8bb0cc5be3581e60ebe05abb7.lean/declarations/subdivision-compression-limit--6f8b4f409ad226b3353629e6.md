# subdivision_compression_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29e85e69-dd69-2a09-a31b-cdb4504dc7e3",
  "kind": "theorem",
  "lexical_name": "subdivision_compression_limit",
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
  "slug": "subdivision-compression-limit--6f8b4f409ad226b3353629e6",
  "source": {
    "blob": "a0347a435edd54074a1791c94c275e7a7b55bcd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantd5dc8ae731eb5770221ae7e591110a50a48394b8bb0cc5be3581e60ebe05abb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f8b4f409ad226b3353629e6801b5ba9254123b219df4e44e9feb6808b24addc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantd5dc8ae731eb5770221ae7e591110a50a48394b8bb0cc5be3581e60ebe05abb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e85e69-dd69-2a09-a31b-cdb4504dc7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subdivision_compression_limit {ι : Type*} (s : Finset ι)
    (D H W : ι → ℝ) {Hp Wp Dp C : ℝ}
    (hHp : 0 < Hp) (hWp : 0 < Wp) (hW : ∀ i ∈ s, 0 < W i)
    (hH : ∀ i ∈ s, 0 < H i) (hD : ∀ i ∈ s, 0 ≤ D i)
    (hheight : ∀ i ∈ s, H i ≤ Hp) (hdebt : Dp = ∑ i ∈ s, D i)
    (hwidth : (∑ i ∈ s, W i) = Wp)
    (hcap : ∀ i ∈ s, compression (D i) (H i) (W i) ≤ C) :
    compression Dp Hp Wp ≤ C :=
  (parent_le_weighted_children s D H W hHp hWp hW hH hD hheight hdebt).trans
    (weighted_children_le_cap s D H W hWp (fun i hi => (hW i hi).le) hwidth hcap)

end
end GRWTSK.RiemannHypothesis.Conversation.PositiveSubdivision
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantd5dc8ae731eb5770221ae7e591110a50a48394b8bb0cc5be3581e60ebe05abb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PositiveSubdivision/Variantd5dc8ae731eb5770221ae7e591110a50a48394b8bb0cc5be3581e60ebe05abb7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0347a435edd54074a1791c94c275e7a7b55bcd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
