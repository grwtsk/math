# productShell_mem_implies_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c84e8126-c94a-6685-3755-38feb257951d",
  "kind": "theorem",
  "lexical_name": "productShell_mem_implies_scale",
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
  "slug": "productshell-mem-implies-scale--65ebded58cf6b69bb12e72d5",
  "source": {
    "blob": "6ecd8b78950b41b0f027abb857904d407b108044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ebded58cf6b69bb12e72d5f328d8e118cde114764c6f43c27d48ef99bbc481",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c84e8126-c94a-6685-3755-38feb257951d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productShell_mem_implies_scale {N q n : ℕ}
    (hn : n ∈ typeIIProductShell N q) :
    n ≤ 2 * N := by
  exact ((mem_typeIIProductShell_iff.mp hn).2.trans (min_le_right _ _))

/-- The part of shell `q` exposed by prefix endpoint `x`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecd8b78950b41b0f027abb857904d407b108044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
