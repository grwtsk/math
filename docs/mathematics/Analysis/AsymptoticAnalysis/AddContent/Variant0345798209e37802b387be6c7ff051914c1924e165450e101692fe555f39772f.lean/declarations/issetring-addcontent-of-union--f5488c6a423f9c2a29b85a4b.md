# IsSetRing.addContent_of_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8cee01839a578b3e02c6dbfde0a22b6fd9315a90e55eed3a7447bfea681b99a",
  "kind": "def",
  "lexical_name": "IsSetRing.addContent_of_union",
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
  "slug": "issetring-addcontent-of-union--f5488c6a423f9c2a29b85a4b",
  "source": {
    "blob": "36511f3c1ee578146fd740b5241d08316d783442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 525,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5488c6a423f9c2a29b85a4b7faf8bcf5ce6bed3ab8c517475d717b7f8e9a4d8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8cee01839a578b3e02c6dbfde0a22b6fd9315a90e55eed3a7447bfea681b99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSetRing.addContent_of_union (m : Set α → G) (hC : IsSetRing C) (m_empty : m ∅ = 0)
    (m_add : ∀ {s t : Set α} (_hs : s ∈ C) (_ht : t ∈ C), Disjoint s t → m (s ∪ t) = m s + m t) :
    AddContent G C where
  toFun := m
  empty' := m_empty
  sUnion' I h_ss h_dis h_mem := by
    induction I using Finset.induction with
    | empty => simp only [Finset.coe_empty, Set.sUnion_empty, Finset.sum_empty, m_empty]
    | insert s I hsI h =>
      rw [Finset.coe_insert] at *
      rw [Set.insert_subset_iff] at h_ss
      rw [Set.pairwiseDisjoint_insert_of_notMem] at h_dis
      swap; · exact hsI
      have h_sUnion_mem : ⋃₀ ↑I ∈ C := by
        rw [Set.sUnion_eq_biUnion]
        apply hC.biUnion_mem
        intro n hn
        exact h_ss.2 hn
      rw [Set.sUnion_insert, m_add h_ss.1 h_sUnion_mem (Set.disjoint_sUnion_right.mpr h_dis.2),
        Finset.sum_insert hsI, h h_ss.2 h_dis.1]
      rwa [Set.sUnion_insert] at h_mem

variable [PartialOrder G] [CanonicallyOrderedAdd G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36511f3c1ee578146fd740b5241d08316d783442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
