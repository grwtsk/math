# IsFiltration.F_lt_le_F

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d1a45466b2acc57db2752acbd883ff234e2541a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/dec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0090d3b3-6b68-d1a3-6fa2-dbe50d4c5864",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e09260c-bc02-512d-010c-12b10aa3d7fe",
  "kind": "lemma",
  "lexical_name": "IsFiltration.F_lt_le_F",
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
  "slug": "isfiltration-f-lt-le-f--372a0772fbe3e42949ab3dd8",
  "source": {
    "blob": "9d1a45466b2acc57db2752acbd883ff234e2541a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:372a0772fbe3e42949ab3dd8e06a468d62697fdd366d4633edbdee73bbd22889",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e09260c-bc02-512d-010c-12b10aa3d7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsFiltration.F_lt_le_F (F : ι → σ) (F_lt : outParam <| ι → σ) (i : ι) [IsFiltration F F_lt] :
    F_lt i ≤ F i :=
  is_sup (F i) i (fun _ hi ↦ IsFiltration.mono (le_of_lt hi))

/-- A convenience constructor for `IsFiltration` when the index is the integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d1a45466b2acc57db2752acbd883ff234e2541a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
