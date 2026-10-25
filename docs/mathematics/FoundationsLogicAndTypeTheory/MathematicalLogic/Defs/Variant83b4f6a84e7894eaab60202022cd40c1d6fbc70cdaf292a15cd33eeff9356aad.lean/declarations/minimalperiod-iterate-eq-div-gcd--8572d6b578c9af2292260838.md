# minimalPeriod_iterate_eq_div_gcd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a5eb6ed-5d1b-3eaa-dbf2-656c2d9d49f4",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_iterate_eq_div_gcd'",
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
  "slug": "minimalperiod-iterate-eq-div-gcd--8572d6b578c9af2292260838",
  "source": {
    "blob": "b1a24d13a4eadbfd3c434bbe9548bce54007cdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 400,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8572d6b578c9af2292260838dc28ba3e796fd19493401b48dfb0d0b26079e4cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a5eb6ed-5d1b-3eaa-dbf2-656c2d9d49f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimalPeriod_iterate_eq_div_gcd' (h : x ∈ periodicPts f) :
    minimalPeriod f^[n] x = minimalPeriod f x / Nat.gcd (minimalPeriod f x) n :=
  minimalPeriod_iterate_eq_div_gcd_aux <|
    gcd_pos_of_pos_left n (minimalPeriod_pos_iff_mem_periodicPts.mpr h)

/-- The orbit of a periodic point `x` of `f` is the cycle `[x, f x, f (f x), ...]`. Its length is
the minimal period of `x`.

If `x` is not a periodic point, then this is the empty (aka nil) cycle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a24d13a4eadbfd3c434bbe9548bce54007cdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
