# Heap.WF.findMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:007f9fdfd11312352a00d8739594be6643b3cfaad7e0acc8e5d2b0735c8394ef",
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
  "slug": "heap-wf-findmin--e4220f89ff5359a7131583e5",
  "source": {
    "blob": "c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4220f89ff5359a7131583e575f18e0a529ecf511a5a5c4c8f503390f9e75d81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:007f9fdfd11312352a00d8739594be6643b3cfaad7e0acc8e5d2b0735c8394ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–449.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
