# LeftCancelMonoid.toMonoid_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e84e4820-48a3-eb68-70c5-f59568c3e2b8",
  "kind": "theorem",
  "lexical_name": "LeftCancelMonoid.toMonoid_injective",
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
  "slug": "leftcancelmonoid-tomonoid-injective--c5745b2dd595d87bb25c169f",
  "source": {
    "blob": "c2c9adfb63879116a11487bcec4bca47efcfca3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 70,
    "path": "GRWTSK/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5745b2dd595d87bb25c169f4010f0a0451fb5dd9c73b0320d67e5c5cd0ef560",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e84e4820-48a3-eb68-70c5-f59568c3e2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LeftCancelMonoid.toMonoid_injective {M : Type u} :
    Function.Injective (@LeftCancelMonoid.toMonoid M) := by
  rintro @⟨@⟨⟩⟩ @⟨@⟨⟩⟩ h
  congr <;> injection h

@[to_additive (attr := ext)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c9adfb63879116a11487bcec4bca47efcfca3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
