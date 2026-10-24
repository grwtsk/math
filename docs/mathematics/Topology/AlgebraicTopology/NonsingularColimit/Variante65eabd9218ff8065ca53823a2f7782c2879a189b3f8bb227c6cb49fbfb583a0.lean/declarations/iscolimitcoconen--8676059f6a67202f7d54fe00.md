# isColimitCoconeN'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7b56455200c3fddbd71e8b89d6063be7e4cbe075a0b4cbfab451433057fe1a4",
  "kind": "def",
  "lexical_name": "isColimitCoconeN'",
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
  "slug": "iscolimitcoconen--8676059f6a67202f7d54fe00",
  "source": {
    "blob": "042e8a27e580fd852a51a7684d7538d1305a148d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8676059f6a67202f7d54fe00827ec8125e67b8337a8a1a286ad08fafd0b79fa4",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7b56455200c3fddbd71e8b89d6063be7e4cbe075a0b4cbfab451433057fe1a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCoconeN' : IsColimit X.coconeN' :=
  (IsColimit.equivOfNatIsoOfIso
    X.functorN'Iso.symm _ _ (Cocone.ext (Iso.refl _))).1 X.isColimitCoconeN

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042e8a27e580fd852a51a7684d7538d1305a148d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
