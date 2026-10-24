# multiplicity_zero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4019ce4501b82d55b5162b00841ca2811ed14f52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 520,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3149b8c-5e23-aae2-de69-28bf4e776c14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea82a4f5-1e2e-1c03-76bb-f301555f6c4e",
  "kind": "theorem",
  "lexical_name": "multiplicity_zero_left",
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
  "slug": "multiplicity-zero-left--45b01e9202392e2218ace2f5",
  "source": {
    "blob": "4019ce4501b82d55b5162b00841ca2811ed14f52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 520,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b01e9202392e2218ace2f5dbab940e76ac79dec22521fa25773a307cc49952",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea82a4f5-1e2e-1c03-76bb-f301555f6c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_zero_left (a : α) : multiplicity 0 a = 0 := by
  by_cases ha : a = 0
  · simp [ha]
  · exact multiplicity_eq_of_emultiplicity_eq_some (emultiplicity_zero_eq_zero_of_ne_zero a ha)

@[deprecated (since := "2026-09-11")] alias multiplicity_zero_eq_zero_of_ne_zero :=
  multiplicity_zero_left

end MonoidWithZero

section Semiring

variable [Semiring α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4019ce4501b82d55b5162b00841ca2811ed14f52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
