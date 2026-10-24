# of_nonunits_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a98a6d9adb008facba25c0337fdcc10209537b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2ee1462-d42f-4d12-f3b8-8d3523c97fd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2994d42-f8a7-1001-4b52-b8f88f027ad3",
  "kind": "theorem",
  "lexical_name": "of_nonunits_add",
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
  "slug": "of-nonunits-add--2b68755ff95f80fa1b25eb01",
  "source": {
    "blob": "48a98a6d9adb008facba25c0337fdcc10209537b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b68755ff95f80fa1b25eb01385a2603b4fa3d64b2d4f3e0ac5d0636764ade44",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2994d42-f8a7-1001-4b52-b8f88f027ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_nonunits_add [Nontrivial R]
    (h : ∀ a b : R, a ∈ nonunits R → b ∈ nonunits R → a + b ∈ nonunits R) : IsLocalRing R where
  isUnit_or_isUnit_of_add_one {a b} hab :=
    or_iff_not_and_not.2 fun H => h a b H.1 H.2 <| hab.symm ▸ isUnit_one

end Semiring

section CommSemiring

variable [CommSemiring R]

/-- A semiring is local if it has a unique maximal ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a98a6d9adb008facba25c0337fdcc10209537b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
