# inv12_trace120

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f54b94b5-0193-4f80-9337-9bb181dcd4e5",
  "kind": "theorem",
  "lexical_name": "inv12_trace120",
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
  "slug": "inv12-trace120--dc8db4cdcdc665bbab0387fc",
  "source": {
    "blob": "58b8bf33aae7ec18d0a84900e91fbabf9bb1f9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 276,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Inv12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8db4cdcdc665bbab0387fc6ea4a797938d45b882ae09354829974d7efdbb26",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f54b94b5-0193-4f80-9337-9bb181dcd4e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv12_trace120 : powFuel 8 255 205250085880848506920669449012007280934 158902312199223543263157988293329013310 = 255211775190703847597530955573826158499 :=
  (pow_odd_step 7 255 205250085880848506920669449012007280934 158902312199223543263157988293329013310 135032664910700190735608471963376098968 167580755781696941119479153735968343305 (by decide) (by decide) inv12_square120 inv12_product120).trans inv12_trace121
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Inv12.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b8bf33aae7ec18d0a84900e91fbabf9bb1f9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
