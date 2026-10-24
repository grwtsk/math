# inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5060d1bcfc899f36908399eafe130f1cc7f8eff19eb689ad2b73514efb3e4dc",
  "kind": "def",
  "lexical_name": "inclusion",
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
  "slug": "inclusion--9dc36faa46f9880e5f9aaaa2",
  "source": {
    "blob": "d38e89bc23eb28cf2f2ddd6906bd88e9ae2cdb03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 343,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dc36faa46f9880e5f9aaaa2cb353160aabb21770595b542a8a232736460e2a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5060d1bcfc899f36908399eafe130f1cc7f8eff19eb689ad2b73514efb3e4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inclusion (h : p ≤ p') : p →ₗ[R] p' :=
  p.subtype.codRestrict p' fun ⟨_, hx⟩ => h hx

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38e89bc23eb28cf2f2ddd6906bd88e9ae2cdb03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
