# coe_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b85f7d-b26a-c0b0-8940-2b1e889b4136",
  "kind": "lemma",
  "lexical_name": "coe_nsmul",
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
  "slug": "coe-nsmul--c0f0f8cac45be3251b6698a4",
  "source": {
    "blob": "873b801ef3bd185e135fb79b5f59033ae39b64f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 268,
    "path": "GRWTSK/Algebra/GroupTheory/AddChar/Variantbf74ad93ac53c4b4f07791711e3e08cf8b362b4484e7cd9bf0294c2628764144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f0f8cac45be3251b6698a4556833e7b2004f2271499e592e0c9eb4d5206104",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddChar/Variantbf74ad93ac53c4b4f07791711e3e08cf8b362b4484e7cd9bf0294c2628764144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b85f7d-b26a-c0b0-8940-2b1e889b4136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma coe_nsmul (n : ℕ) (ψ : AddChar A M) : ⇑(n • ψ) = ψ ^ n := rfl

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddChar/Variantbf74ad93ac53c4b4f07791711e3e08cf8b362b4484e7cd9bf0294c2628764144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddChar/Variantbf74ad93ac53c4b4f07791711e3e08cf8b362b4484e7cd9bf0294c2628764144.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873b801ef3bd185e135fb79b5f59033ae39b64f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
