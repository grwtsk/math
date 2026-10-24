# divInt_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5f018e8-313a-320e-4f76-efe63ae87159",
  "kind": "theorem",
  "lexical_name": "divInt_ne_zero",
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
  "slug": "divint-ne-zero--35f8383874f0a37add15e570",
  "source": {
    "blob": "abf10f00b2cdb468af3680e420bf573937f85313",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f8383874f0a37add15e570ba6581a40ba278a80a77a4d47cb7cf1b9b1fd0fa",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5f018e8-313a-320e-4f76-efe63ae87159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divInt_ne_zero {a b : ℤ} (b0 : b ≠ 0) : a /. b ≠ 0 ↔ a ≠ 0 :=
  (divInt_eq_zero b0).not
#align rat.mk_ne_zero Rat.divInt_ne_zero

#align rat.mk_eq Rat.divInt_eq_iff
#align rat.div_mk_div_cancel_left Rat.divInt_mul_right

-- Porting note: this can move to Std4
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf10f00b2cdb468af3680e420bf573937f85313` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
