# wrap_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a266a720e1382a16d4c2fde72b19fad17fde4aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e57f56a7-0d7f-1924-40e2-169b61add75c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8e98dc7-3677-0b4f-14f6-88fad7904f3b",
  "kind": "theorem",
  "lexical_name": "wrap_mul",
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
  "slug": "wrap-mul--290aa84790026eb3f0ceb7cf",
  "source": {
    "blob": "a266a720e1382a16d4c2fde72b19fad17fde4aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290aa84790026eb3f0ceb7cfb9f91d5a0a63b684637d709c02caaa9309fe89bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e98dc7-3677-0b4f-14f6-88fad7904f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrap_mul {i : IntInterval} (h : i.isFinite) (x y : Int) :
    i.wrap (x * y) = i.wrap (i.wrap x * i.wrap y) := by
  match i with
  | co lo hi =>
    dsimp [wrap]
    rw [Int.add_left_inj, Int.emod_eq_emod_iff_emod_sub_eq_zero, Int.emod_def (x - lo), Int.emod_def (y - lo)]
    have : x - lo - (hi - lo) * ((x - lo) / (hi - lo)) + lo = x - (hi - lo) * ((x - lo) / (hi - lo)) := by omega
    rw [this]; clear this
    have : y - lo - (hi - lo) * ((y - lo) / (hi - lo)) + lo = y - (hi - lo) * ((y - lo) / (hi - lo)) := by omega
    rw [this]; clear this
    have : x * y - lo - ((x - (hi - lo) * ((x - lo) / (hi - lo))) * (y - (hi - lo) * ((y - lo) / (hi - lo))) - lo) =
      x * y - (x - (hi - lo) * ((x - lo) / (hi - lo))) * (y - (hi - lo) * ((y - lo) / (hi - lo))) := by omega
    rw [this]; clear this
    have : (x - (hi - lo) * ((x - lo) / (hi - lo))) * (y - (hi - lo) * ((y - lo) / (hi - lo))) =
        x * y - (hi - lo) * (x * ((y - lo) / (hi - lo)) + (x - lo) / (hi - lo) * (y - (hi - lo) * ((y - lo) / (hi - lo)))) := by
      conv => lhs; rw [Int.sub_mul, Int.mul_sub, Int.mul_left_comm, Int.sub_sub, Int.mul_assoc, ← Int.mul_add]
    rw [this]; clear this
    rw [Int.sub_sub_self]
    apply Int.mul_emod_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantd74b020c4015b2b2cfaf54c24f45f92ab9dc5a803875c494e2edc7f080a8cef9.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a266a720e1382a16d4c2fde72b19fad17fde4aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
