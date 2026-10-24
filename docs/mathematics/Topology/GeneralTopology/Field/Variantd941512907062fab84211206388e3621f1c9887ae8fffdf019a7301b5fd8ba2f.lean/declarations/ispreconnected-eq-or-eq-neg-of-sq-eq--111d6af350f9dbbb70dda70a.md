# IsPreconnected.eq_or_eq_neg_of_sq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd9ac432-29c2-e606-d75e-288b27ccf523",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68ceca71-a6f4-2874-3961-5ffff45e4082",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.eq_or_eq_neg_of_sq_eq",
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
  "slug": "ispreconnected-eq-or-eq-neg-of-sq-eq--111d6af350f9dbbb70dda70a",
  "source": {
    "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:111d6af350f9dbbb70dda70a6f77065161b41db9d602e501a135f15fe27d9ffc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68ceca71-a6f4-2874-3961-5ffff45e4082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.eq_or_eq_neg_of_sq_eq [Field 𝕜] [HasContinuousInv₀ 𝕜] [ContinuousMul 𝕜]
    (hS : IsPreconnected S) (hf : ContinuousOn f S) (hg : ContinuousOn g S)
    (hsq : EqOn (f ^ 2) (g ^ 2) S) (hg_ne : ∀ {x : α}, x ∈ S → g x ≠ 0) :
    EqOn f g S ∨ EqOn f (-g) S := by
  have hsq : EqOn ((f / g) ^ 2) 1 S := fun x hx => by
    simpa [div_eq_one_iff_eq (pow_ne_zero _ (hg_ne hx))] using hsq hx
  simpa (config := { contextual := true }) [EqOn, div_eq_iff (hg_ne _)]
    using hS.eq_one_or_eq_neg_one_of_sq_eq (hf.div hg fun z => hg_ne) hsq
#align is_preconnected.eq_or_eq_neg_of_sq_eq IsPreconnected.eq_or_eq_neg_of_sq_eq

/-- If `f, g` are functions `α → 𝕜`, both continuous on a preconnected set `S`, with
`f ^ 2 = g ^ 2` on `S`, and `g z ≠ 0` all `z ∈ S`, then as soon as `f = g` holds at
one point of `S` it holds for all points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98c66552079474e8610fcdac05d432bfccc7365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
