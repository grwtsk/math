# neg_mul_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2297b8-9b8b-a8a1-5fab-ae2cdfd24c0c",
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
  "slug": "neg-mul-le-mul--b3e5e26ef033743dba415ff6",
  "source": {
    "blob": "a6a8c183abc77994de58140c6a460890b52c9900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant25c27d2c7fcde62349b445aa58b2238cd8816a79a061f77ff4160fc0b7e98256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e5e26ef033743dba415ff675bd31f5d843ada1126f5441ce39288a9b5c89c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant25c27d2c7fcde62349b445aa58b2238cd8816a79a061f77ff4160fc0b7e98256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2297b8-9b8b-a8a1-5fab-ae2cdfd24c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant25c27d2c7fcde62349b445aa58b2238cd8816a79a061f77ff4160fc0b7e98256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant25c27d2c7fcde62349b445aa58b2238cd8816a79a061f77ff4160fc0b7e98256.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a8c183abc77994de58140c6a460890b52c9900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
