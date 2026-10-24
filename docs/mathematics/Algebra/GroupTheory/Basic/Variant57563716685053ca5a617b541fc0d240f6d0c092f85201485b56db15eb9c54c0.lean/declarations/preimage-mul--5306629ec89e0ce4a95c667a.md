# preimage_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79176815-b405-8633-0cdd-5c39c3d4c325",
  "kind": "lemma",
  "lexical_name": "preimage_mul",
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
  "slug": "preimage-mul--5306629ec89e0ce4a95c667a",
  "source": {
    "blob": "a17db1d4b6a3aca3f63fea6749908a596525bca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 985,
    "line": 974,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5306629ec89e0ce4a95c667a1b662a3753f8662f0e4e4a62586f595bbb3509c5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79176815-b405-8633-0cdd-5c39c3d4c325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–985.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_mul (hm : Injective m) {s t : Set β} (hs : s ⊆ range m) (ht : t ⊆ range m) :
    m ⁻¹' (s * t) = m ⁻¹' s * m ⁻¹' t :=
  hm.image_injective <| by
    rw [image_mul, image_preimage_eq_iff.2 hs, image_preimage_eq_iff.2 ht,
      image_preimage_eq_iff.2 (mul_subset_range m hs ht)]

end Mul

section Monoid
variable [Monoid α] [Monoid β] [FunLike F α β]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant57563716685053ca5a617b541fc0d240f6d0c092f85201485b56db15eb9c54c0.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a17db1d4b6a3aca3f63fea6749908a596525bca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
