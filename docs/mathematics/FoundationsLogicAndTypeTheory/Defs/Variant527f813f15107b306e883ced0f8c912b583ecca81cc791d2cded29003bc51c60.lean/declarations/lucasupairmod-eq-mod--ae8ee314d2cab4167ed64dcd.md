# lucasUPairMod_eq_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d19d8057eac869df9395c6f2b73c301ce0a8107",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdaa867a-098a-efb9-eff1-de1a37e9483a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:595b7947-bc82-5c98-acc5-5fcf2682edaf",
  "kind": "theorem",
  "lexical_name": "lucasUPairMod_eq_mod",
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
  "slug": "lucasupairmod-eq-mod--ae8ee314d2cab4167ed64dcd",
  "source": {
    "blob": "6d19d8057eac869df9395c6f2b73c301ce0a8107",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8ee314d2cab4167ed64dcdcf86766da1ce1f83566d56c39ee3281bff56f5af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:595b7947-bc82-5c98-acc5-5fcf2682edaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lucasUPairMod_eq_mod (P Q : Int) (m : Nat) (n : Nat) :
    lucasUPairMod P Q m n =
      ((lucasUPair P Q n).1 % m, (lucasUPair P Q n).2 % m) := by
  induction n with
  | zero =>
    simp [lucasUPairMod, lucasUPair]
  | succ n ih =>
    simp only [lucasUPairMod, lucasUPair]
    rw [ih]
    ext
    · -- fst: (snd % m) % m = snd % m
      exact Int.emod_emod_of_dvd _ dvd_rfl
    · -- snd: (P * (snd % m) - Q * (fst % m)) % m = (P * snd - Q * fst) % m
      rw [Int.sub_emod, Int.mul_emod (a := P), Int.mul_emod (a := Q)]
      simp only [Int.emod_emod_of_dvd _ dvd_rfl]
      rw [← Int.mul_emod (a := P), ← Int.mul_emod (a := Q), ← Int.sub_emod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d19d8057eac869df9395c6f2b73c301ce0a8107` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
