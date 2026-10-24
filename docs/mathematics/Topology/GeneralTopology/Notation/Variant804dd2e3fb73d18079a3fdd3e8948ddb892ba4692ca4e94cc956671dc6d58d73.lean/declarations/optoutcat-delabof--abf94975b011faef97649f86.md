# OptOutCat.delabOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcdebe866972a0849d77facabe0b0dba702a46f179d6147e43ae45b9ef1806d2",
  "kind": "def",
  "lexical_name": "OptOutCat.delabOf",
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
  "slug": "optoutcat-delabof--abf94975b011faef97649f86",
  "source": {
    "blob": "b6ae3657fb7670b8e69c88465ff75b406072cbd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Notation/Variant804dd2e3fb73d18079a3fdd3e8948ddb892ba4692ca4e94cc956671dc6d58d73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abf94975b011faef97649f8609c8dc22df3ee4d401aac9ee7ab4d82fdcea38d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Notation/Variant804dd2e3fb73d18079a3fdd3e8948ddb892ba4692ca4e94cc956671dc6d58d73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcdebe866972a0849d77facabe0b0dba702a46f179d6147e43ae45b9ef1806d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab OptOutCat.of] public meta def OptOutCat.delabOf := CategoryTheory.delabOf

/-- info: ↧ℤ : OptOutCat -/
#guard_msgs in
#check (↧ℤ : OptOutCat)

-- Opting in also covers the parameterised case.
/-- info: ↧ℤ : ModuleCat ℤ -/
#guard_msgs in
#check (↧ℤ : ModuleCat ℤ)

-- `pp.explicit` falls back to `delabApp`.
/-- info: @CommRingCat.of Int Int.instCommRing : CommRingCat -/
#guard_msgs in
set_option pp.explicit true in
#check (↧ℤ : CommRingCat)

-- `pp.notation false` falls back to `delabApp`, rather than to structure instance notation.
/-- info: CommRingCat.of Int : CommRingCat -/
#guard_msgs in
set_option pp.notation false in
#check (↧ℤ : CommRingCat)

end Delab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Notation/Variant804dd2e3fb73d18079a3fdd3e8948ddb892ba4692ca4e94cc956671dc6d58d73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Notation/Variant804dd2e3fb73d18079a3fdd3e8948ddb892ba4692ca4e94cc956671dc6d58d73.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ae3657fb7670b8e69c88465ff75b406072cbd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
