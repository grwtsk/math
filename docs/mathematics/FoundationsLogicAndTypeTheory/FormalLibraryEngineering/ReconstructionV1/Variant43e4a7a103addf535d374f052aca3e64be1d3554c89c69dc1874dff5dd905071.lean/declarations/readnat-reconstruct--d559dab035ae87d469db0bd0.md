# readNat_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31471f9f9b6e87534388b1f52ab27c8490dd9a02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-inverse/Reconstruction-v1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b11b5169-b5d2-c48e-60e6-159e9dd98e3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dd2bf3c-ce11-0700-dd9e-4e438c596fbd",
  "kind": "theorem",
  "lexical_name": "readNat_reconstruct",
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
  "slug": "readnat-reconstruct--d559dab035ae87d469db0bd0",
  "source": {
    "blob": "31471f9f9b6e87534388b1f52ab27c8490dd9a02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d559dab035ae87d469db0bd0833956c56159738c1107d68fb45c09cf13046472",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dd2bf3c-ce11-0700-dd9e-4e438c596fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readNat_reconstruct {sep : Char} {b : Bytes} {n : Nat} {s : Bytes}
    (h : readNat sep b = some (n,s)) : b = digits n ++ sep::s := by
  cases ht : readUntil sep b with
  | none => simp [readNat, ht] at h
  | some pair =>
    rcases pair with ⟨p,t⟩
    cases hu : unsigned p with
    | none => simp [readNat, ht, hu] at h
    | some k =>
      simp [readNat, ht, hu] at h
      rcases h with ⟨rfl,rfl⟩
      simpa [unsigned_reconstruct hu] using readUntil_reconstruct ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31471f9f9b6e87534388b1f52ab27c8490dd9a02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
