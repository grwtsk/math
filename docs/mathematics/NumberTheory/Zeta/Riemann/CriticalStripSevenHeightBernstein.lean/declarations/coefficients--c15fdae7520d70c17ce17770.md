# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfebb3be5997f53ee9ff2d639536902eb2f8e1297b39b4eeb3f0bbd2711f1898",
  "kind": "def",
  "lexical_name": "coefficients",
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
  "slug": "coefficients--c15fdae7520d70c17ce17770",
  "source": {
    "blob": "770157b96fd07e7e5163394e0bda1bb85e1caf60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c15fdae7520d70c17ce17770d60dbbdb2228066e8c9409c5ef81326ae82fd94c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfebb3be5997f53ee9ff2d639536902eb2f8e1297b39b4eeb3f0bbd2711f1898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 9 → Fin 5 → ℕ :=
  ![
    ![133378622937, 1162580092464, 3553722717482, 4045163278184, 9434036885],
    ![1143335739756, 9865335240936, 29912555851696, 33885095450584, 604875153316],
    ![4284644952756, 36604301063036, 110102295227036, 124110765949268, 4014303018880],
    ![9168221445792, 77564668298976, 231470036559136, 259615213730080, 11913976396864],
    ![12251639159616, 102664782737312, 303994230767504, 339231059353856, 19865412629968],
    ![10469682134016, 86916174715776, 255391407208000, 283538171916160, 19965609662656],
    ![5587200233472, 45961790120192, 134034207467072, 148041237766592, 12067796372608],
    ![1702351994880, 13879945973760, 40176595717120, 44146362311680, 4057696626688],
    ![226728345600, 1832670216192, 5266139156480, 5756617060352, 585211781120]
  ]

/-- Exact equality for ALL real u,v; signs are asserted only on the unit square.
No external symbolic calculation or table-fitting oracle is a premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `770157b96fd07e7e5163394e0bda1bb85e1caf60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
