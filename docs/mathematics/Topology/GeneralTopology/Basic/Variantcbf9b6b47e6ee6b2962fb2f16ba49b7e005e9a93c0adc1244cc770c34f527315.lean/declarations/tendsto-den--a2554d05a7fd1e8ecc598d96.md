# Tendsto.den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d97edd35-49f6-88ed-bcae-6c3ae475c1d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32f22518-2b69-18b0-ee2f-18db5fc0b22e",
  "kind": "theorem",
  "lexical_name": "Tendsto.den",
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
  "slug": "tendsto-den--a2554d05a7fd1e8ecc598d96",
  "source": {
    "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2554d05a7fd1e8ecc598d96c9cafcb5a87818a1212200bb958567e0d8302807",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32f22518-2b69-18b0-ee2f-18db5fc0b22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.den {α K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K]
    [TopologicalSpace K] [OrderTopology K]
    [ContinuousInv K] {f g : α → K} {l : Filter α} (hf : Tendsto f l atTop) {a : K} (ha : 0 < a)
    (hlim : Tendsto (fun x => f x / g x) l (𝓝 a)) :
    Tendsto g l atTop :=
  have hlim' : Tendsto (fun x => g x / f x) l (𝓝 a⁻¹) := by
    simp_rw [← inv_div (f _)]
    exact Filter.Tendsto.inv (f := fun x => f x / g x) hlim
  (hlim'.pos_mul_atTop (inv_pos_of_pos ha) hf).congr' (.div_mul_cancel_atTop hf)

/-- If when `x` tends to `∞`, `f x / g x` tends to a positive constant, then `f` tends to `∞` if
  and only if `g` tends to `∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e056917bed0090d2909ab8de28047555fd6262b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
