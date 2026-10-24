# Measurable.biSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ed32c36-9cc9-e33c-bf97-26d535369bbb",
  "kind": "theorem",
  "lexical_name": "Measurable.biSup",
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
  "slug": "measurable-bisup--fba8c6e2e3084ca78656ae32",
  "source": {
    "blob": "92836497e9d56f47a80a1027b3d598575c1c5761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 815,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba8c6e2e3084ca78656ae3262d44777e095b8f404d7fd454a1c4d46b205b4d2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ed32c36-9cc9-e33c-bf97-26d535369bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.biSup {ι} (s : Set ι) {f : ι → δ → α} (hs : s.Countable)
    (hf : ∀ i ∈ s, Measurable (f i)) : Measurable fun b => ⨆ i ∈ s, f i b := by
  haveI : Encodable s := hs.toEncodable
  by_cases H : ∀ i, i ∈ s
  · have : ∀ b, ⨆ i ∈ s, f i b = ⨆ (i : s), f i b :=
      fun b ↦ cbiSup_eq_of_forall (f := fun i ↦ f i b) H
    simp only [this]
    exact .iSup (fun (i : s) ↦ hf i i.2)
  · have : ∀ b, ⨆ i ∈ s, f i b = (⨆ (i : s), f i b) ⊔ sSup ∅ :=
      fun b ↦ cbiSup_eq_of_not_forall (f := fun i ↦ f i b) H
    simp only [this]
    apply Measurable.sup _ measurable_const
    exact .iSup (fun (i : s) ↦ hf i i.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92836497e9d56f47a80a1027b3d598575c1c5761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
