# DefinableFun.ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56ed02d8-de35-fa56-7ced-c3ee462cfd1f",
  "kind": "theorem",
  "lexical_name": "DefinableFun.ite",
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
  "slug": "definablefun-ite--58f8ac9e4728b72b32d12bc7",
  "source": {
    "blob": "30016eee0bedf2e57a9f3adc5c64a5573e684243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 556,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58f8ac9e4728b72b32d12bc7ec550940fca450201b83c336725ca0ddf70f7bd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56ed02d8-de35-fa56-7ced-c3ee462cfd1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DefinableFun.ite {p : (α → M) → Prop} {g} [DecidablePred p]
    (hp : A.Definable L (Set.ofPred p)) (hf : DefinableFun L A f) (hg : DefinableFun L A g) :
    DefinableFun L A fun v => if p v then f v else g v := by
  let P : Set (Option α → M) := {w | p (w ∘ some)}
  have hP : A.Definable L P := hp.preimage_comp some
  simp only [DefinableFun]
  convert! (hP.inter hf).union (hP.compl.inter hg)
  ext w
  by_cases h : p (w ∘ some) <;> simp [tupleGraph, P, h]

/-- The set where two definable functions agree is definable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30016eee0bedf2e57a9f3adc5c64a5573e684243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
