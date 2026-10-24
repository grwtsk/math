# isUnit_iff_not_dvd_char

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f78ed1df476fc46f3c8bd0aa538cc4229e48b6e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:636b7e07-35fd-1f0e-72c0-902524165f29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3be5579-0446-67c0-9490-ec0df11feeab",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_not_dvd_char",
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
  "slug": "isunit-iff-not-dvd-char--ac13ebf935dd17e99742429b",
  "source": {
    "blob": "f78ed1df476fc46f3c8bd0aa538cc4229e48b6e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac13ebf935dd17e99742429b6d256cc8f82b77a69d190a925b5738ffac393662",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3be5579-0446-67c0-9490-ec0df11feeab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_not_dvd_char (R : Type*) [CommRing R] (p : ℕ) [Fact p.Prime] [Finite R] :
    IsUnit (p : R) ↔ ¬p ∣ ringChar R :=
  isUnit_iff_not_dvd_char_of_ringChar_ne_zero R p <| CharP.char_ne_zero_of_finite R (ringChar R)

/-- The prime divisors of the characteristic of a finite commutative ring are exactly
the prime divisors of its cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CharAndCard/Variant9584cf50b515bc1125efb1ab7994eba2909c4a021958c109e2861663b5729ce4.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f78ed1df476fc46f3c8bd0aa538cc4229e48b6e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
