# torsionEmbedding_three_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b5d63cf-7511-325f-0371-dcb0de8eb7c5",
  "kind": "theorem",
  "lexical_name": "torsionEmbedding_three_nsmul",
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
  "slug": "torsionembedding-three-nsmul--9942b66e045907d54b0ee3e1",
  "source": {
    "blob": "05bbe17dc2eda31fe8e4b7ad2b044ccafc996a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/NumberTheory/Farey/CatMapArithmeticBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9942b66e045907d54b0ee3e16da1172573e216e3867f972280fcccca3b61436c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/CatMapArithmeticBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b5d63cf-7511-325f-0371-dcb0de8eb7c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsionEmbedding_three_nsmul (v : Vec3) :
    (3 : ℕ) • torsionEmbedding v = 0 := by
  funext i
  change (3 : ℕ) • ZMod.toAddCircle (v i) = 0
  have hz : (3 : ℕ) • (v i) = (0 : ZMod 3) := by
    fin_cases (v i) <;> decide
  calc
    (3 : ℕ) • ZMod.toAddCircle (v i) =
        ZMod.toAddCircle ((3 : ℕ) • (v i)) := by simp
    _ = 0 := by rw [hz]; simp

/-- The ACTUAL torus cat map agrees with the reduced matrix
on every embedded three-torsion point, by additivity of
ZMod.toAddCircle. This is a proved-in-source geometric bridge,
not a mere comparison of eigenvalues. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/CatMapArithmeticBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/CatMapArithmeticBridge.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05bbe17dc2eda31fe8e4b7ad2b044ccafc996a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
