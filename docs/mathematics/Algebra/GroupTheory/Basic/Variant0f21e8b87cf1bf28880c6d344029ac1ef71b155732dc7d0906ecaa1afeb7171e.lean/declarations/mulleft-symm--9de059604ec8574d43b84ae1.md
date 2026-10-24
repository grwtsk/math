# mulLeft_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76bb928f2c5677c47d969c522d3d05f804cc6a79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c024d98c-e63d-1aa2-651f-0bdfef088668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3f4f9bd-7d8b-e5a6-13a1-2cfa0bc7c68d",
  "kind": "theorem",
  "lexical_name": "mulLeft_symm",
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
  "slug": "mulleft-symm--9de059604ec8574d43b84ae1",
  "source": {
    "blob": "76bb928f2c5677c47d969c522d3d05f804cc6a79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de059604ec8574d43b84ae1c29f647968a1cd5d496240ee7f2bca0b247e3c23",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f4f9bd-7d8b-e5a6-13a1-2cfa0bc7c68d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulLeft_symm (u : Mˣ) : u.mulLeft.symm = u⁻¹.mulLeft :=
  Equiv.ext fun _ => rfl
#align units.mul_left_symm Units.mulLeft_symm
#align add_units.add_left_symm AddUnits.addLeft_symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76bb928f2c5677c47d969c522d3d05f804cc6a79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
