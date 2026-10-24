# existsUnique_mul_zpow_mem_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f7276e0-fa24-409f-fd7c-d955c3ffb4a7",
  "kind": "theorem",
  "lexical_name": "existsUnique_mul_zpow_mem_Ico",
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
  "slug": "existsunique-mul-zpow-mem-ico--93a67bfb62b750f22154801d",
  "source": {
    "blob": "2a2bec0e40694328e8405bc489abef27f6a24a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a67bfb62b750f22154801de542c29bc1e785bf83b151a6b071e591759e14e9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f7276e0-fa24-409f-fd7c-d955c3ffb4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_mul_zpow_mem_Ico {a : G} (ha : 1 < a) (b c : G) :
    ∃! m : ℤ, b * a ^ m ∈ Set.Ico c (c * a) :=
  (Equiv.neg ℤ).bijective.existsUnique_iff.2 <| by
    simpa only [Equiv.neg_apply, mem_Ico, zpow_neg, ← div_eq_mul_inv, le_div_iff_mul_le, one_mul,
      mul_comm c, div_lt_iff_lt_mul, mul_assoc] using existsUnique_zpow_near_of_one_lt' ha (b / c)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2bec0e40694328e8405bc489abef27f6a24a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
