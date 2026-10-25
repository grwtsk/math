# Heap.WF.findMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d94fd32dd023fbdd996461d2778e6253be8ca877de40aa14cb60df18eff829ae",
  "kind": "def",
  "lexical_name": "Heap.WF.findMin",
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
  "slug": "heap-wf-findmin--de89a5d0fba190f7bf91399f",
  "source": {
    "blob": "7f910aafeff88f8de2c5228bdfea9253c4e06ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de89a5d0fba190f7bf91399f727d9def01b8a48d6c24f2d0ba7c3fe7d96efbdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d94fd32dd023fbdd996461d2778e6253be8ca877de40aa14cb60df18eff829ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Heap.WF.findMin {s : Heap α} (h : s.WF le n) (hr : res.WF le)
    (hk : ∀ {s}, s.WF le n → (k s).WF le 0) : ((s : Heap α).findMin le k res).WF le :=
  match s with
  | .nil => hr
  | .cons r a c s => by
    let ⟨h₁, h₂, h₃⟩ := h
    simp [Heap.findMin]
    cases le res.val a with
    | true  => exact findMin h₃ hr (fun h => hk ⟨h₁, h₂, h⟩)
    | false => exact findMin h₃ ⟨_, fun h => hk (h.of_le h₁), h₂, h₃⟩ (fun h => hk ⟨h₁, h₂, h⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f910aafeff88f8de2c5228bdfea9253c4e06ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
