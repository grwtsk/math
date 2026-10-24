# Obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd47a60b9ccd32a55e85dbd7d0f3330c77baa1ecbf0d99ea546c7691a81c02c2",
  "kind": "structure",
  "lexical_name": "Obstruction",
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
  "slug": "obstruction--243821dd120a40e969fe28b1",
  "source": {
    "blob": "bf05caca5bde3f00f496cfffc3ac6b40bdb95aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:243821dd120a40e969fe28b15c99dab4535774518b3243b1385e39aad230d138",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd47a60b9ccd32a55e85dbd7d0f3330c77baa1ecbf0d99ea546c7691a81c02c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Obstruction {A B : Object} (f : Transport A B) (s : A.state) (t : B.state) where
  /-- Observable that detects the proposed output error. -/
  index : B.index
  /-- Exact disagreement at the selected observable. -/
  differs : B.certificates.observe index (f.map s) ≠ B.certificates.observe index t

/-- A certificate obstruction disproves the proposed carrier equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf05caca5bde3f00f496cfffc3ac6b40bdb95aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
