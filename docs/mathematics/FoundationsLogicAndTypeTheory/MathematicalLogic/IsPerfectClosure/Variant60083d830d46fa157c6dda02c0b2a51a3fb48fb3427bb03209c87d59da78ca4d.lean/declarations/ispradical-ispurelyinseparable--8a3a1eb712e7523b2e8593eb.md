# IsPRadical.isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a491e832-f776-c188-35b4-6bc098c6946d",
  "kind": "theorem",
  "lexical_name": "IsPRadical.isPurelyInseparable",
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
  "slug": "ispradical-ispurelyinseparable--8a3a1eb712e7523b2e8593eb",
  "source": {
    "blob": "aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 538,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3a1eb712e7523b2e8593eb7e219993590504fbdf1c5e34c8f1c9ed006d8dc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a491e832-f776-c188-35b4-6bc098c6946d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPRadical.isPurelyInseparable [IsPRadical (algebraMap K L) p] :
    IsPurelyInseparable K L :=
  (isPurelyInseparable_iff_pow_mem K p).2 (IsPRadical.pow_mem (algebraMap K L) p)

/-- If `L / K` is a purely inseparable field extension, then it is `p`-radical. In particular, if
`L` is perfect, then the (relative) perfect closure `perfectClosure K L` is a perfect closure
of `K`, that is, `IsPerfectClosure (algebraMap K (perfectClosure K L)) p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
