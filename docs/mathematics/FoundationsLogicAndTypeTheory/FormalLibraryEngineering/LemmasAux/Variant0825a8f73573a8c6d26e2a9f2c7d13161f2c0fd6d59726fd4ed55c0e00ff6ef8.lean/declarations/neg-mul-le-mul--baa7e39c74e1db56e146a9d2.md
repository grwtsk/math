# neg_mul_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "291f0da752944d50e516503a2f4f36ffc2d9cee7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddf87711-c2f2-8637-3797-097498c57a06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6b1846b-9330-107d-8fde-aaf419b10cfa",
  "kind": "theorem",
  "lexical_name": "neg_mul_le_mul",
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
  "slug": "neg-mul-le-mul--baa7e39c74e1db56e146a9d2",
  "source": {
    "blob": "291f0da752944d50e516503a2f4f36ffc2d9cee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baa7e39c74e1db56e146a9d25d1496f0785acf9b1fda035ad076e01838c14281",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b1846b-9330-107d-8fde-aaf419b10cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_mul_le_mul {x y : Int} {s t : Nat} (lbx : -s ≤ x) (ubx : x < s) (lby : -t ≤ y) (uby : y < t) :
      -(s * t) ≤ x * y := by
  have := Nat.mul_pos (n := s) (m := t) (by omega) (by omega)
  by_cases 0 ≤ x <;> by_cases 0 ≤ y
  · have : 0 ≤ x * y := by apply Int.mul_nonneg <;> omega
    norm_cast
    omega
  · rw [Int.mul_comm (a := x), Int.mul_comm (a := (s : Int)), ← Int.neg_mul]; apply Int.mul_le_mul_of_le_of_le_of_nonneg_of_nonpos <;> omega
  · rw [← Int.neg_mul]; apply Int.mul_le_mul_of_le_of_le_of_nonneg_of_nonpos <;> omega
  · have : 0 < x * y := by apply Int.mul_pos_of_neg_of_neg <;> omega
    norm_cast
    omega

/-! ## pow -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291f0da752944d50e516503a2f4f36ffc2d9cee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
