# χ₄_int_eq_if_mod_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d40e042617cf74a13ac61dac5a2a05a4e709ce5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60cd6de5-1536-4e77-e2db-dabdba1c5c14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bdf8d1e-146e-14bb-6c1f-2012df0c5c47",
  "kind": "theorem",
  "lexical_name": "χ₄_int_eq_if_mod_four",
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
  "slug": "int-eq-if-mod-four--98dcdc3c9735583d4e14167e",
  "source": {
    "blob": "2d40e042617cf74a13ac61dac5a2a05a4e709ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98dcdc3c9735583d4e14167ec81d288116237d479ac05c252052b74f6e4723ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bdf8d1e-146e-14bb-6c1f-2012df0c5c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem χ₄_int_eq_if_mod_four (n : ℤ) :
    χ₄ n = if n % 2 = 0 then 0 else if n % 4 = 1 then 1 else -1 := by
  have help : ∀ m : ℤ, 0 ≤ m → m < 4 → χ₄ m = if m % 2 = 0 then 0 else if m = 1 then 1 else -1 := by
    decide
  rw [← Int.emod_emod_of_dvd n (by norm_num : (2 : ℤ) ∣ 4), ← ZMod.int_cast_mod n 4]
  exact help (n % 4) (Int.emod_nonneg n (by norm_num)) (Int.emod_lt n (by norm_num))
#align zmod.χ₄_int_eq_if_mod_four ZMod.χ₄_int_eq_if_mod_four

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d40e042617cf74a13ac61dac5a2a05a4e709ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
