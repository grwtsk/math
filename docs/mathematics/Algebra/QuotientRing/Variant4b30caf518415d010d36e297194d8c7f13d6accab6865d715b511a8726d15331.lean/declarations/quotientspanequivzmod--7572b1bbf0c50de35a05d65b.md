# quotientSpanEquivZMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e055fe9e2c8220461f5fc03c66e4a6258211820c003ca4b20ba182733a23ff17",
  "kind": "def",
  "lexical_name": "quotientSpanEquivZMod",
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
  "slug": "quotientspanequivzmod--7572b1bbf0c50de35a05d65b",
  "source": {
    "blob": "c0d9298b876fee11a1f828df0326e72241f4329b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7572b1bbf0c50de35a05d65bd7c694c68439e41d4f5fa434a7d0e481ace8bb85",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e055fe9e2c8220461f5fc03c66e4a6258211820c003ca4b20ba182733a23ff17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientSpanEquivZMod (a : ℤ) : ℤ ⧸ Ideal.span ({a} : Set ℤ) ≃+* ZMod a.natAbs :=
  (Ideal.quotEquivOfEq (span_natAbs a)).symm.trans (quotientSpanNatEquivZMod a.natAbs)

end Int

noncomputable section ChineseRemainder
open Ideal

open scoped Function in -- required for scoped `on` notation
/-- The **Chinese remainder theorem**, elementary version for `ZMod`. See also
`Mathlib/Data/ZMod/Basic.lean` for versions involving only two numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d9298b876fee11a1f828df0326e72241f4329b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
