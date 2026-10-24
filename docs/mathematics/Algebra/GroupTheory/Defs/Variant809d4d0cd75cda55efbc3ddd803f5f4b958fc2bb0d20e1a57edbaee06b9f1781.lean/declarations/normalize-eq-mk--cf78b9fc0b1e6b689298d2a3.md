# normalize_eq_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:524621f5-71e9-ea29-1a4a-03f95b09a586",
  "kind": "theorem",
  "lexical_name": "normalize_eq_mk'",
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
  "slug": "normalize-eq-mk--cf78b9fc0b1e6b689298d2a3",
  "source": {
    "blob": "b8a500f3fec0f3893296a0b4bfdb4fb89802ba5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 108,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf78b9fc0b1e6b689298d2a33755b5743321a17f0e6849ea7b57e36b4a7ae92b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:524621f5-71e9-ea29-1a4a-03f95b09a586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_eq_mk' (n : Int) (d : Nat) (h : d ≠ 0) (c : Nat.gcd (Int.natAbs n) d = 1) :
    normalize n d h = mk' n d h c := (mk_eq_normalize ..).symm

-- TODO: Rename `mkRat_num_den` in Batteries
@[simp] alias mkRat_num_den' := mkRat_self

-- TODO: Rename `Rat.divInt_self` to `Rat.num_divInt_den` in Batteries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant809d4d0cd75cda55efbc3ddd803f5f4b958fc2bb0d20e1a57edbaee06b9f1781.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a500f3fec0f3893296a0b4bfdb4fb89802ba5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
