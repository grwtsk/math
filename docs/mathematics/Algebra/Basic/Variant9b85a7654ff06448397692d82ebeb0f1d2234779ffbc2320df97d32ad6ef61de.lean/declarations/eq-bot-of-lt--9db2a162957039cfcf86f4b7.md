# eq_bot_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bed5a10-3da6-872b-32c4-59d09b4bf9f0",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_lt",
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
  "slug": "eq-bot-of-lt--9db2a162957039cfcf86f4b7",
  "source": {
    "blob": "53d95775176a0af0a365db04b7cee64e727de57b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 100,
    "path": "GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9db2a162957039cfcf86f4b719091b6e59a4ef88b7deb1b97afbd9b0e7f707fb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bed5a10-3da6-872b-32c4-59d09b4bf9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_lt [Ring.DimensionLEOne R] (p P : Ideal R) [p.IsPrime] [P.IsPrime] (hpP : p < P) :
    p = ⊥ :=
  by_contra fun hp0 => not_lt_lt ⊥ p P ⟨Ne.bot_lt hp0, hpP⟩

variable {A} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d95775176a0af0a365db04b7cee64e727de57b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
