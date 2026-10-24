# integrableOn_Ioc_iff_integrableOn_Ioo'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62fd395cdd29539d7e4f65d0fc48cf06416fcf5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 666,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3640f5d4-3102-d7a1-e761-948a67404b9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4a4328f-0190-4de9-afc1-b340fa11f577",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioc_iff_integrableOn_Ioo'",
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
  "slug": "integrableon-ioc-iff-integrableon-ioo--986e901217f54cfb84e6aa14",
  "source": {
    "blob": "62fd395cdd29539d7e4f65d0fc48cf06416fcf5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 666,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986e901217f54cfb84e6aa145857e288701b77c4f2fb2f1468501035f0ce8d53",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4a4328f-0190-4de9-afc1-b340fa11f577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioc_iff_integrableOn_Ioo' (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Ioc a b) μ ↔ IntegrableOn f (Ioo a b) μ := by
  by_cases hab : a < b
  · rw [← Ioo_union_right hab, integrableOn_union,
      eq_true (integrableOn_singleton_iff.mpr <| Or.inr hb.lt_top), and_true_iff]
  · rw [Ioo_eq_empty hab, Ioc_eq_empty hab]
#align integrable_on_Ioc_iff_integrable_on_Ioo' integrableOn_Ioc_iff_integrableOn_Ioo'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62fd395cdd29539d7e4f65d0fc48cf06416fcf5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
