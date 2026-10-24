# bilinearMatrixPairing_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db67313b-a76a-e83a-79f9-bce4a33541ea",
  "kind": "theorem",
  "lexical_name": "bilinearMatrixPairing_sub",
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
  "slug": "bilinearmatrixpairing-sub--318b19fda48eb27898556752",
  "source": {
    "blob": "5ea58f63141a71ceffd6d7ac04b632005f0e1fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:318b19fda48eb27898556752d488fe8ac8e2a3ffbfe93b5b08363bedf9750092",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db67313b-a76a-e83a-79f9-bce4a33541ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bilinearMatrixPairing_sub {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (A B : Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left (A - B) right =
      bilinearMatrixPairing left A right -
        bilinearMatrixPairing left B right := by
  rw [sub_eq_add_neg, bilinearMatrixPairing_add]
  simp [bilinearMatrixPairing, sub_eq_add_neg]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea58f63141a71ceffd6d7ac04b632005f0e1fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
