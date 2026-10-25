# Heap.WF.merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27a79473-db69-7bc4-ff3f-5b17cbf43d41",
  "kind": "theorem",
  "lexical_name": "Heap.WF.merge",
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
  "slug": "heap-wf-merge--ec22aef3fc20d19e0e328e99",
  "source": {
    "blob": "cc39075a5d5a4ed3f0764fe176a55431dc01ae83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec22aef3fc20d19e0e328e9908ce6764d0e4d18958e27592d69c4c1276857288",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27a79473-db69-7bc4-ff3f-5b17cbf43d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Heap.WF.merge (h₁ : s₁.WF le) (h₂ : s₂.WF le) :
    (merge le s₁ s₂).WF le :=
  match h₁, h₂ with
  | .nil, .nil => nil
  | .nil, .node h₂ => node h₂
  | .node h₁, .nil => node h₁
  | .node h₁, .node h₂ => merge_node h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc39075a5d5a4ed3f0764fe176a55431dc01ae83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
