# inv_lt_iff_inv_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5dab156-02ae-a337-6959-62382c2b870d",
  "kind": "theorem",
  "lexical_name": "inv_lt_iff_inv_lt",
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
  "slug": "inv-lt-iff-inv-lt--5f8f4b18e50e64715d7b04a2",
  "source": {
    "blob": "56317c5d42d5bc1bbd99d6a007d9fa3d4e6a03e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1535,
    "line": 1532,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f8f4b18e50e64715d7b04a23125a40f9fc394f1bf50e42361d25f6e5c859f02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5dab156-02ae-a337-6959-62382c2b870d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1532–1535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_lt_iff_inv_lt : a⁻¹ < b ↔ b⁻¹ < a := by
  simpa only [inv_inv] using @ENNReal.inv_lt_inv a b⁻¹
#align ennreal.inv_lt_iff_inv_lt ENNReal.inv_lt_iff_inv_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean#L1532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56317c5d42d5bc1bbd99d6a007d9fa3d4e6a03e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
