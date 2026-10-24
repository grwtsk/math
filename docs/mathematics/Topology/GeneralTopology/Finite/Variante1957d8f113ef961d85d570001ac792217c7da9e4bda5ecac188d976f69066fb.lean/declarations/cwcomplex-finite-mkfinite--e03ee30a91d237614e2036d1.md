# CWComplex.finite_mkFinite.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0940dedd-d5ee-da2a-c880-7f261407d4d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:265e2a31-ed72-3df0-2071-493c38da4387",
  "kind": "lemma",
  "lexical_name": "CWComplex.finite_mkFinite.",
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
  "slug": "cwcomplex-finite-mkfinite--e03ee30a91d237614e2036d1",
  "source": {
    "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03ee30a91d237614e2036d1cc594fb80a4aea89bd19c230e184329faa5bed09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:265e2a31-ed72-3df0-2071-493c38da4387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CWComplex.finite_mkFinite.{u} {X : Type u} [TopologicalSpace X] (C : Set X)
    (cell : (n : ℕ) → Type u) (map : (n : ℕ)  → (i : cell n) → PartialEquiv (Fin n → ℝ) X)
    (eventually_isEmpty_cell : ∀ᶠ n in Filter.atTop, IsEmpty (cell n))
    (finite_cell : ∀ (n : ℕ), _root_.Finite (cell n))
    (source_eq : ∀ (n : ℕ) (i : cell n), (map n i).source = ball 0 1)
    (continuousOn : ∀ (n : ℕ) (i : cell n), ContinuousOn (map n i) (closedBall 0 1))
    (continuousOn_symm : ∀ (n : ℕ) (i : cell n), ContinuousOn (map n i).symm (map n i).target)
    (pairwiseDisjoint' :
      (univ : Set (Σ n, cell n)).PairwiseDisjoint (fun ni ↦ map ni.1 ni.2 '' ball 0 1))
    (mapsTo : ∀ (n : ℕ) (i : cell n),
      MapsTo (map n i) (sphere 0 1) (⋃ (m < n) (j : cell m), map m j '' closedBall 0 1))
    (union' : ⋃ (n : ℕ) (j : cell n), map n j '' closedBall 0 1 = C) :
    letI := mkFinite C cell map eventually_isEmpty_cell finite_cell source_eq continuousOn
      continuousOn_symm pairwiseDisjoint' mapsTo union'
    Finite C :=
  letI := mkFinite C cell map eventually_isEmpty_cell finite_cell source_eq continuousOn
      continuousOn_symm pairwiseDisjoint' mapsTo union'
  { eventually_isEmpty_cell := eventually_isEmpty_cell
    finite_cell := finite_cell }

variable {X : Type*} [TopologicalSpace X] {C D : Set X} [RelCWComplex C D]

/-- If the collection of all cells (of any dimension) of a relative CW complex `C` is finite, then
`C` is finite as a CW complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
