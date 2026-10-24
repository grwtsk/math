# quotQuotEquivQuotSupₐ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72fc7a2e460770cf4edccff464087e5e5b8bf1c47434f6ff6d35c7468e1d80ad",
  "kind": "def",
  "lexical_name": "quotQuotEquivQuotSupₐ",
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
  "slug": "quotquotequivquotsup--9198f7dbbb1169a5d0c35731",
  "source": {
    "blob": "c103efaa582c7a17045232e2bd5f056e0a0b5f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 962,
    "line": 959,
    "path": "GRWTSK/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9198f7dbbb1169a5d0c35731a41c75c1ea530d7f511ec8b78c7c3537adc97c80",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72fc7a2e460770cf4edccff464087e5e5b8bf1c47434f6ff6d35c7468e1d80ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–962.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotQuotEquivQuotSupₐ : ((A ⧸ I) ⧸ J.map (Quotient.mkₐ R I)) ≃ₐ[R] A ⧸ I ⊔ J :=
  AlgEquiv.ofRingEquiv (f := quotQuotEquivQuotSup I J) fun _ => rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant46eb4d87d86e555e7878bf3ce270f141fdf743c681293c7c6a81020a58745a12.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c103efaa582c7a17045232e2bd5f056e0a0b5f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
