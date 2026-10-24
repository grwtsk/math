# Module.finite_iff_krullDimLE_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09428545fcd5c9687b9ae49a336d1a1040b063b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cf89f2f-6d69-fda5-89e5-19cd370b27f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29e3c947-42ae-605a-09a0-c59445aa2fcc",
  "kind": "lemma",
  "lexical_name": "Module.finite_iff_krullDimLE_zero",
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
  "slug": "module-finite-iff-krulldimle-zero--2b799b64565fbb5d933b1cb4",
  "source": {
    "blob": "09428545fcd5c9687b9ae49a336d1a1040b063b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b799b64565fbb5d933b1cb4a6be824ed9cf8204e6924bb4719ba5de3491bd42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e3c947-42ae-605a-09a0-c59445aa2fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.finite_iff_krullDimLE_zero [IsArtinianRing R] :
    Module.Finite R A ↔ Ring.KrullDimLE 0 A := by
  have : IsNoetherianRing A := Algebra.FiniteType.isNoetherianRing R A
  rw [finite_iff_isArtinianRing, isArtinianRing_iff_isNoetherianRing_krullDimLE_zero,
    and_iff_right this]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09428545fcd5c9687b9ae49a336d1a1040b063b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
