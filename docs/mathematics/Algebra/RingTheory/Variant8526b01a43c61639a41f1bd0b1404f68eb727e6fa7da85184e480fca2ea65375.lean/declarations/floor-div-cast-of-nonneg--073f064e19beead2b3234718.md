# floor_div_cast_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36599246526eaa120c74e4e9f404ae18b2cffdfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e572eb7-d0f6-442e-6e61-9f93e0218688",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b5181b4-9063-b77b-aa98-9007c94ad322",
  "kind": "theorem",
  "lexical_name": "floor_div_cast_of_nonneg",
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
  "slug": "floor-div-cast-of-nonneg--073f064e19beead2b3234718",
  "source": {
    "blob": "36599246526eaa120c74e4e9f404ae18b2cffdfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 287,
    "path": "GRWTSK/Algebra/Ring/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:073f064e19beead2b323471840ec98c031f84c7fea8e96f1f70f6b9f9ebc8ca2",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b5181b4-9063-b77b-aa98-9007c94ad322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_div_cast_of_nonneg {n : ℤ} (hn : 0 ≤ n) (a : k) : ⌊a / n⌋ = ⌊a⌋ / n := by
  obtain rfl | hn := hn.eq_or_lt
  · simp
  nth_rw 2 [← div_mul_cancel₀ (a := a) (ne_of_gt (Int.cast_pos.mpr hn))]
  rw [mul_cast_floor_div_cancel_of_pos hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36599246526eaa120c74e4e9f404ae18b2cffdfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
