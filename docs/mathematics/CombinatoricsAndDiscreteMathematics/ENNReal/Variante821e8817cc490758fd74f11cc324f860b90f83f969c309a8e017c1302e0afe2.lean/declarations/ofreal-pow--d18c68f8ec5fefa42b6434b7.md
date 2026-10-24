# ofReal_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edae2790-7c58-32ab-62d7-cc8cd3177baf",
  "kind": "theorem",
  "lexical_name": "ofReal_pow",
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
  "slug": "ofreal-pow--d18c68f8ec5fefa42b6434b7",
  "source": {
    "blob": "56317c5d42d5bc1bbd99d6a007d9fa3d4e6a03e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2238,
    "line": 2235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d18c68f8ec5fefa42b6434b71203865c4f71c24f49c231cfb8ea2f270e00ae65",
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

Occurrence: `result:edae2790-7c58-32ab-62d7-cc8cd3177baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2235–2238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofReal_pow {p : ℝ} (hp : 0 ≤ p) (n : ℕ) : ENNReal.ofReal (p ^ n) = ENNReal.ofReal p ^ n :=
  by rw [ofReal_eq_coe_nnreal hp, ← coe_pow, ← ofReal_coe_nnreal, NNReal.coe_pow, NNReal.coe_mk]
#align ennreal.of_real_pow ENNReal.ofReal_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Variante821e8817cc490758fd74f11cc324f860b90f83f969c309a8e017c1302e0afe2.lean#L2235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56317c5d42d5bc1bbd99d6a007d9fa3d4e6a03e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
