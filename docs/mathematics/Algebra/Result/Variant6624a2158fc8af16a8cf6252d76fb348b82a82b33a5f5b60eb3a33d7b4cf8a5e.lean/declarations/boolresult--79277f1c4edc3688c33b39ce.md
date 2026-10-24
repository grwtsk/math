# BoolResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f651f4ba0d0ccdb67625db1c93a4d7d5e9d120369a77072712db1ab7aee89d15",
  "kind": "abbrev",
  "lexical_name": "BoolResult",
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
  "slug": "boolresult--79277f1c4edc3688c33b39ce",
  "source": {
    "blob": "6345f2801a5f710ba76c13e9a7fc62ca08217548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 454,
    "path": "GRWTSK/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79277f1c4edc3688c33b39ceef0d9f2470d583e3cb9f1d75879d56ea2b363f7e",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f651f4ba0d0ccdb67625db1c93a4d7d5e9d120369a77072712db1ab7aee89d15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev BoolResult (p : Q(Prop)) (b : Bool) : Type :=
  Q(Bool.rec (¬ $p) ($p) $b)

/-- Obtain a `Result` from a `BoolResult`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6345f2801a5f710ba76c13e9a7fc62ca08217548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
