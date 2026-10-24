# CWComplex.mkFinite.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a371ead402cc2e2f7729a09eedf3b91ecc8036f1aaa4dcdb83a3470d06dfd8a",
  "kind": "def",
  "lexical_name": "CWComplex.mkFinite.",
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
  "slug": "cwcomplex-mkfinite--e0b52224ddaa8b5a38aa44e7",
  "source": {
    "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0b52224ddaa8b5a38aa44e7440a69d376cb60599decf7e9d24fc47e1510fd31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a371ead402cc2e2f7729a09eedf3b91ecc8036f1aaa4dcdb83a3470d06dfd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CWComplex.mkFinite.{u} {X : Type u} [TopologicalSpace X] (C : Set X)
    (cell : (n : ℕ) → Type u) (map : (n : ℕ) → (i : cell n) → PartialEquiv (Fin n → ℝ) X)
    (eventually_isEmpty_cell : ∀ᶠ n in Filter.atTop, IsEmpty (cell n))
    (finite_cell : ∀ (n : ℕ), _root_.Finite (cell n))
    (source_eq : ∀ (n : ℕ) (i : cell n), (map n i).source = ball 0 1)
    (continuousOn : ∀ (n : ℕ) (i : cell n), ContinuousOn (map n i) (closedBall 0 1))
    (continuousOn_symm : ∀ (n : ℕ) (i : cell n), ContinuousOn (map n i).symm (map n i).target)
    (pairwiseDisjoint' :
      (univ : Set (Σ n, cell n)).PairwiseDisjoint (fun ni ↦ map ni.1 ni.2 '' ball 0 1))
    (mapsTo' : ∀ (n : ℕ) (i : cell n),
      MapsTo (map n i) (sphere 0 1) (⋃ (m < n) (j : cell m), map m j '' closedBall 0 1))
    (union' : ⋃ (n : ℕ) (j : cell n), map n j '' closedBall 0 1 = C) :
    CWComplex C := (RelCWComplex.mkFinite C ∅
  (cell := cell)
  (map := map)
  (eventually_isEmpty_cell := eventually_isEmpty_cell)
  (finite_cell := finite_cell)
  (source_eq := source_eq)
  (continuousOn := continuousOn)
  (continuousOn_symm := continuousOn_symm)
  (pairwiseDisjoint' := pairwiseDisjoint')
  (disjointBase' := by simp only [disjoint_empty, implies_true])
  (mapsTo := by simpa only [empty_union])
  (isClosedBase := isClosed_empty)
  (union' := by simpa only [empty_union])).toCWComplex

/-- A CW complex that was constructed using `CWComplex.mkFinite` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
