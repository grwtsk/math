# sq_eq_one_of_sq_lt_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5965fb3d-abba-b405-319d-93c0255f205b",
  "kind": "theorem",
  "lexical_name": "sq_eq_one_of_sq_lt_four",
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
  "slug": "sq-eq-one-of-sq-lt-four--a65bec05db8dabc03b83d3c2",
  "source": {
    "blob": "048e849cdf5cbcda78a047ddfd86c61adc17f2fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a65bec05db8dabc03b83d3c252a09fef0c3b79a42006dfd69a254acbe30d9feb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5965fb3d-abba-b405-319d-93c0255f205b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_eq_one_of_sq_lt_four {x : ℤ} (h1 : x ^ 2 < 4) (h2 : x ≠ 0) : x ^ 2 = 1 :=
  sq_eq_one_iff.mpr
    ((abs_eq (zero_le_one' ℤ)).mp
      (le_antisymm (lt_add_one_iff.mp (abs_lt_of_sq_lt_sq h1 zero_le_two))
        (sub_one_lt_iff.mp (abs_pos.mpr h2))))
#align int.sq_eq_one_of_sq_lt_four Int.sq_eq_one_of_sq_lt_four

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048e849cdf5cbcda78a047ddfd86c61adc17f2fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
