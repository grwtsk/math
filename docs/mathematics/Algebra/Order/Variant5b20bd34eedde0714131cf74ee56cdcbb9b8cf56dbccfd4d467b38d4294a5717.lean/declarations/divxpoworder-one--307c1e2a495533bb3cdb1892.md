# divXPowOrder_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec6322c9-f247-46e4-fd35-002193841663",
  "kind": "theorem",
  "lexical_name": "divXPowOrder_one",
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
  "slug": "divxpoworder-one--307c1e2a495533bb3cdb1892",
  "source": {
    "blob": "c98c0336347e11facf751562f35c6835ac27b186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 394,
    "path": "GRWTSK/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307c1e2a495533bb3cdb18927d4479f0cbd051e45399f1a26495c994f3c822a5",
  "verification": {
    "reference": "docs/verification/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec6322c9-f247-46e4-fd35-002193841663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divXPowOrder_one : divXPowOrder 1 = (1 : R⟦X⟧) := by
  ext k
  simp

end OrderZeroNeOne

section NoZeroDivisors

variable [Semiring R] [NoZeroDivisors R]

/-- The order of the product of two formal power series over an integral domain
is the sum of their orders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98c0336347e11facf751562f35c6835ac27b186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
