# nonzeroPrefix_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bad5199f-b7f0-7adb-8591-870a6678f9f1",
  "kind": "theorem",
  "lexical_name": "nonzeroPrefix_card_le",
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
  "slug": "nonzeroprefix-card-le--fe50aa094a539dc1494ff5bb",
  "source": {
    "blob": "587d6dbff1da35409b08610193d032cb6e8cddac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe50aa094a539dc1494ff5bb3402c65dc73179318db5dba6c75aa0fcb408ca9a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bad5199f-b7f0-7adb-8591-870a6678f9f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzeroPrefix_card_le (t : ℝ) :
    (Nat.card (NonzeroPrefix t) : ℝ) ≤ 2*positiveCount t := by
  have := positivePrefix_finite t
  have h := Nat.card_le_card_of_injective (positiveSignMap t) (positiveSignMap_injective t)
  have hn : Nat.card (NonzeroPrefix t) ≤ 2*Nat.card (PositivePrefix t) := by
    simpa [Nat.card_prod, Nat.mul_comm] using h
  change (Nat.card (NonzeroPrefix t) : ℝ) ≤ 2*(Nat.card (PositivePrefix t) : ℝ)
  exact_mod_cast hn

/-- Exact geometric coefficient, with genuine HasSum before using tsum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587d6dbff1da35409b08610193d032cb6e8cddac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
