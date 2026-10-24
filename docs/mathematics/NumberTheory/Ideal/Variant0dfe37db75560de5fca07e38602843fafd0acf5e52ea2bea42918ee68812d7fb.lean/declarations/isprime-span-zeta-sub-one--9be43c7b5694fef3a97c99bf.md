# isPrime_span_zeta_sub_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fd10049fa7a979e0b6831ce38aa605ca322fd810e78a2f0f53f81a0b23851cb",
  "kind": "instance",
  "lexical_name": "isPrime_span_zeta_sub_one'",
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
  "slug": "isprime-span-zeta-sub-one--9be43c7b5694fef3a97c99bf",
  "source": {
    "blob": "61401778d0496dae7af4e4d64dc98a9e9c41ef4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 187,
    "path": "GRWTSK/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9be43c7b5694fef3a97c99bf47b1e5df62d7484102f2e7992baf15a7b7d0da3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fd10049fa7a979e0b6831ce38aa605ca322fd810e78a2f0f53f81a0b23851cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isPrime_span_zeta_sub_one' : IsPrime (span {hζ.toInteger - 1}) := by
  rw [← pow_one p] at hK hζ
  exact isPrime_span_zeta_sub_one p 0 hζ

/-- If `2 < p`, then `2` is not in the ideal `(ζ - 1)`, where `ζ` is a primitive `p`-th root of
unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61401778d0496dae7af4e4d64dc98a9e9c41ef4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
