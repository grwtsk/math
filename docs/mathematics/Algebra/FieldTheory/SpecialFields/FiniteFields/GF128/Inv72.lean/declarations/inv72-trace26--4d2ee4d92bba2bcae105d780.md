# inv72_trace26

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea8cdbc0-dee7-30e6-c77a-234c3e355a72",
  "kind": "theorem",
  "lexical_name": "inv72_trace26",
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
  "slug": "inv72-trace26--4d2ee4d92bba2bcae105d780",
  "source": {
    "blob": "2a631b1454da35590576f09165817ce60ebf4ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 464,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Inv72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d2ee4d92bba2bcae105d780e098ae10f12eb578eed6dcd73ac829c9d9fbd437",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8cdbc0-dee7-30e6-c77a-234c3e355a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv72_trace26 : powFuel 102 5070602400912917605986812821503 207125831544389244453061551018883112900 278553809354012699128947847454117682600 = 91147062568108516999118198419223628039 :=
  (pow_odd_step 101 5070602400912917605986812821503 207125831544389244453061551018883112900 278553809354012699128947847454117682600 134782638809399765903403538988542815068 285920288480418849117857438731319571502 (by decide) (by decide) inv72_square26 inv72_product26).trans inv72_trace27
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Inv72.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a631b1454da35590576f09165817ce60ebf4ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
