# isLocalization_isLocalization_atPrime_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea7cb36e-09e3-6ddb-6855-b46fd767b5eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a0ebd57-8093-f5d1-e532-132987455d0f",
  "kind": "theorem",
  "lexical_name": "isLocalization_isLocalization_atPrime_isLocalization",
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
  "slug": "islocalization-islocalization-atprime-islocalization--f37fe75c88b80f51660714ac",
  "source": {
    "blob": "f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 148,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37fe75c88b80f51660714ac2553c4b4127a7d5ae5f681ef7bed47558beead4a",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a0ebd57-8093-f5d1-e532-132987455d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_isLocalization_atPrime_isLocalization (p : Ideal S) [Hp : p.IsPrime]
    [IsLocalization.AtPrime T p] : IsLocalization.AtPrime T (p.comap (algebraMap R S)) := by
  apply localization_localization_isLocalization_of_has_all_units M p.primeCompl T
  intro x hx hx'
  exact (Hp.1 : ¬_) (p.eq_top_of_isUnit_mem hx' hx)
#align is_localization.is_localization_is_localization_at_prime_is_localization IsLocalization.isLocalization_isLocalization_atPrime_isLocalization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
