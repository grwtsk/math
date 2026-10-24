# translationNumber_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:197e2a3c-220a-67df-8ba8-ac88a9997eed",
  "kind": "theorem",
  "lexical_name": "translationNumber_pow",
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
  "slug": "translationnumber-pow--a4d9d5c5acd6434cca61d370",
  "source": {
    "blob": "95ea821f39bc037850094907e864039d77a0051c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 750,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d9d5c5acd6434cca61d3701a924a59bdca795a3a1217c4b5442b21f82dbb32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:197e2a3c-220a-67df-8ba8-ac88a9997eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translationNumber_pow : ∀ n : ℕ, τ (f ^ n) = n * τ f
  | 0 => by simp
  | n + 1 => by
    rw [pow_succ', translationNumber_mul_of_commute (Commute.pow_self f n),
      translationNumber_pow n, Nat.cast_add_one, add_mul, one_mul]
#align circle_deg1_lift.translation_number_pow CircleDeg1Lift.translationNumber_pow

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ea821f39bc037850094907e864039d77a0051c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
