# imI_snd_dualNumberEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b31bed8b-4104-3aa0-742f-2f8fd22ef96f",
  "kind": "theorem",
  "lexical_name": "imI_snd_dualNumberEquiv",
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
  "slug": "imi-snd-dualnumberequiv--b20100c4a3dc2111fde8aa82",
  "source": {
    "blob": "c687af5d6f5ef29a4860b0cdde387dfaafda719b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 90,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20100c4a3dc2111fde8aa820d4b8ac5e48a2159d50ee6dc654e36573671a04f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31bed8b-4104-3aa0-742f-2f8fd22ef96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imI_snd_dualNumberEquiv (q : Quaternion (DualNumber R)) :
    (dualNumberEquiv q).snd.imI = q.imI.snd :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c687af5d6f5ef29a4860b0cdde387dfaafda719b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
