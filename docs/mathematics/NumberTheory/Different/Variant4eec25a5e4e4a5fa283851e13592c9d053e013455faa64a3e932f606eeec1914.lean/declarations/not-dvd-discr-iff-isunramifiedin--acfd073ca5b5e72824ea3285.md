# not_dvd_discr_iff_isUnramifiedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bac7137f46cd5aea5f18c3e1f152963688b336c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:944080e4-725a-4ecb-14d3-966cbc1a3653",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9273388-85cd-bcbe-3e4d-fd8eceb0b254",
  "kind": "lemma",
  "lexical_name": "not_dvd_discr_iff_isUnramifiedIn",
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
  "slug": "not-dvd-discr-iff-isunramifiedin--acfd073ca5b5e72824ea3285",
  "source": {
    "blob": "4bac7137f46cd5aea5f18c3e1f152963688b336c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 192,
    "path": "GRWTSK/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acfd073ca5b5e72824ea3285e4db36e82e1e05b78785526f3cdd47dfaf44149c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9273388-85cd-bcbe-3e4d-fd8eceb0b254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_dvd_discr_iff_isUnramifiedIn [IsIntegralClosure 𝒪 ℤ K] {p : ℤ} (hp : Prime p) :
    ¬ p ∣ discr K ↔ Algebra.IsUnramifiedIn 𝒪 (Ideal.span {p}) := by
  have := (IsIntegralClosure.algebraMap_injective 𝒪 ℤ K).isDomain
  have := IsIntegralClosure.isDedekindDomain ℤ ℚ K 𝒪
  have := CharZero.of_module (R := 𝒪) K
  rw [not_dvd_discr_iff_forall_liesOver K 𝒪 hp]
  exact (Algebra.isUnramifiedIn_iff_forall_of_isDedekindDomain'
    (Ideal.span_singleton_eq_bot.not.mpr hp.ne_zero)).symm

/-- Also see `not_dvd_discr_iff_forall_liesOver` for a slightly easier to prove RHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bac7137f46cd5aea5f18c3e1f152963688b336c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
