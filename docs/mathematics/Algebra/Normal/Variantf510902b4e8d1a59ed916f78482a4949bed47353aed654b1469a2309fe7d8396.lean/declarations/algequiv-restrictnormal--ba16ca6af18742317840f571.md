# AlgEquiv.restrictNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebc8b4717c35b2903bd6a49054a7e8b5ea731bec5cf756000c975e6b8bf5a254",
  "kind": "def",
  "lexical_name": "AlgEquiv.restrictNormal",
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
  "slug": "algequiv-restrictnormal--ba16ca6af18742317840f571",
  "source": {
    "blob": "975c3a1042f26579b615f68cc75c65736c9c4946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 354,
    "path": "GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba16ca6af18742317840f571af70cc2e903750162d14c013e937f0ad1324cf8e",
  "verification": {
    "reference": "docs/verification/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebc8b4717c35b2903bd6a49054a7e8b5ea731bec5cf756000c975e6b8bf5a254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AlgEquiv.restrictNormal [Normal F E] : E ≃ₐ[F] E :=
  AlgHom.restrictNormal' χ.toAlgHom E
#align alg_equiv.restrict_normal AlgEquiv.restrictNormal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975c3a1042f26579b615f68cc75c65736c9c4946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
