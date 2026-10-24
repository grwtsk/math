# _root_.GRWTSK.Algebra.Algebra.Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.toAlgebra_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e980cf9-79f1-f8d9-ea00-6fb79e9f44ed",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.Algebra.Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.toAlgebra_algebraMap",
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
  "slug": "root-grwtsk-algebra-algebra-variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231--02ef9d94d8b3589794622175",
  "source": {
    "blob": "7fdf7f16581cbc72979764db38b5e2cdf355ea50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 270,
    "path": "GRWTSK/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ef9d94d8b358979462217552acfc520c8836f3b8ef047701a67761d87248a5",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e980cf9-79f1-f8d9-ea00-6fb79e9f44ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.Algebra.Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.toAlgebra_algebraMap [Algebra R S] :
    (algebraMap R S).toAlgebra = ‹_› :=
  algebra_ext _ _ fun _ ↦ rfl

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantd44bd9bbd90099f252798bca1029225896441cdc20baffdfb8cad2af1d13b7c4.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdf7f16581cbc72979764db38b5e2cdf355ea50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
