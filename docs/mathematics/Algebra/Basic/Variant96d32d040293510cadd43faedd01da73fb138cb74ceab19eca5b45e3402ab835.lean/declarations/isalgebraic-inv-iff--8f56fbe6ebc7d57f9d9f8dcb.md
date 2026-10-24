# IsAlgebraic.inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e98fb608e05417720a8a59b3ae17326da05d487",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c4af7ae-61bd-7aa8-dfda-48bc39826afd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:822c7183-0ca3-2603-0e40-c46e75f3bb05",
  "kind": "lemma",
  "lexical_name": "IsAlgebraic.inv_iff",
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
  "slug": "isalgebraic-inv-iff--8f56fbe6ebc7d57f9d9f8dcb",
  "source": {
    "blob": "4e98fb608e05417720a8a59b3ae17326da05d487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 374,
    "path": "GRWTSK/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f56fbe6ebc7d57f9d9f8dcb86c25d072f49685e7627b968c9f21250bf867e54",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:822c7183-0ca3-2603-0e40-c46e75f3bb05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsAlgebraic.inv_iff {K} [Field K] [Algebra R K] {x : K} :
    IsAlgebraic R (x⁻¹) ↔ IsAlgebraic R x := by
  by_cases hx : x = 0
  · simp [hx]
  letI := invertibleOfNonzero hx
  exact IsAlgebraic.invOf_iff (R := R) (x := x)

alias ⟨_, IsAlgebraic.inv⟩ := IsAlgebraic.inv_iff

end zero_ne_one

section

variable {K L R S A : Type*}

section Ring

section CommRing

variable [CommRing R] [CommRing S] [Ring A]
variable [Algebra R S] [Algebra S A] [Algebra R A] [IsScalarTower R S A]

/-- If `x` is algebraic over `R`, then `x` is algebraic over `S` when `S` is an extension of `R`,
  and the map from `R` to `S` is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e98fb608e05417720a8a59b3ae17326da05d487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
