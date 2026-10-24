# inv108_trace81

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b9ef90-10ee-ac87-2197-d2a324334962",
  "kind": "theorem",
  "lexical_name": "inv108_trace81",
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
  "slug": "inv108-trace81--e8bf61a771419e52ab42afba",
  "source": {
    "blob": "d21b3a8b4fa4806cf517dd132bcde0a27cb625da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 354,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Inv108.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8bf61a771419e52ab42afba87afd1c8660d2789468e0178f29673ea97166dbb",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv108.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b9ef90-10ee-ac87-2197-d2a324334962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv108_trace81 : powFuel 47 140737488355327 91105139842885677590134351909655749415 262752385101058697075070890935697867123 = 179593471430495300161225487255655444871 :=
  (pow_odd_step 46 140737488355327 91105139842885677590134351909655749415 262752385101058697075070890935697867123 138602982081542394896059475641886942326 325214477140576255092312404129628077770 (by decide) (by decide) inv108_square81 inv108_product81).trans inv108_trace82
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv108.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Inv108.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d21b3a8b4fa4806cf517dd132bcde0a27cb625da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
