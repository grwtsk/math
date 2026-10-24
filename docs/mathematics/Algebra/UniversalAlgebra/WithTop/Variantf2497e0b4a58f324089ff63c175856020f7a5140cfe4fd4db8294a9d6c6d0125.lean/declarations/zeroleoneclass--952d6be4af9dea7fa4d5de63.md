# zeroLEOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d65e54dcf08863e459a486ad2284defb382d3ef268efc81d557a5b2604d136b",
  "kind": "instance",
  "lexical_name": "zeroLEOneClass",
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
  "slug": "zeroleoneclass--952d6be4af9dea7fa4d5de63",
  "source": {
    "blob": "8d6f1189ae7ed2ec1ee196becf46c7f8b7d6c6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 504,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:952d6be4af9dea7fa4d5de636dfbab28d2f968f3ce5400cf537f5841bc02d9c5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d65e54dcf08863e459a486ad2284defb382d3ef268efc81d557a5b2604d136b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance zeroLEOneClass [Zero α] [One α] [LE α] [ZeroLEOneClass α] : ZeroLEOneClass (WithBot α) :=
  ⟨some_le_some.2 zero_le_one⟩

-- `by norm_cast` proves this lemma, so I did not tag it with `norm_cast`
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6f1189ae7ed2ec1ee196becf46c7f8b7d6c6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
