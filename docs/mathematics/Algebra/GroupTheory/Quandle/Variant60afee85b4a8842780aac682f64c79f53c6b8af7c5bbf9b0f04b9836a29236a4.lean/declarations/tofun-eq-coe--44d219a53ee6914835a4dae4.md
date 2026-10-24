# toFun_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b27241e0-4e3e-1345-781b-74a86e16644b",
  "kind": "theorem",
  "lexical_name": "toFun_eq_coe",
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
  "slug": "tofun-eq-coe--44d219a53ee6914835a4dae4",
  "source": {
    "blob": "9531cb0a30ce31817293be23085f337956497c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 340,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d219a53ee6914835a4dae43d8efb6301b266179f2b83b78ca9c8ff6c6d3bf3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27241e0-4e3e-1345-781b-74a86e16644b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem toFun_eq_coe (f : S₁ →◃ S₂) : f.toFun = f := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9531cb0a30ce31817293be23085f337956497c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
