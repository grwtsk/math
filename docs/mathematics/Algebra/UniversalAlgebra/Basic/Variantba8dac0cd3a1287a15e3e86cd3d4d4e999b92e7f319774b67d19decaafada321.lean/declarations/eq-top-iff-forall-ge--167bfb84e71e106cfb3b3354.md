# eq_top_iff_forall_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51c544b7-22fe-aad5-a1d6-b399e8cfcd24",
  "kind": "lemma",
  "lexical_name": "eq_top_iff_forall_ge",
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
  "slug": "eq-top-iff-forall-ge--167bfb84e71e106cfb3b3354",
  "source": {
    "blob": "24d90993f7b56791a353154b8dac7da436a4a6f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 416,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167bfb84e71e106cfb3b33549356a184d55cac59ec851cb547fff9a05438e11b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c544b7-22fe-aad5-a1d6-b399e8cfcd24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_top_iff_forall_ge {n : WithBot ℕ∞} : n = ⊤ ↔ ∀ m : ℕ, m ≤ n :=
  _root_.WithBot.eq_top_iff_forall_ge

end ENat.WithBot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24d90993f7b56791a353154b8dac7da436a4a6f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
