# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c205ca066e41c38dc5d47ba51475c9529202ad06ecc7a79fab3ca93d7255d71",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2e051488761b5f68c8ffead6",
  "source": {
    "blob": "6a63299475337014b568d124b92cbe536ead8722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e051488761b5f68c8ffead67dc7548e39ed429f7778d23405e558ea6547130e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c205ca066e41c38dc5d47ba51475c9529202ad06ecc7a79fab3ca93d7255d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) oreSetComm {R} [CommMonoid R] (S : Submonoid R) : OreSet S where
  ore_right_cancel m n s h := ⟨s, by rw [mul_comm (s : R) n, mul_comm (s : R) m, h]⟩
  oreNum r _ := r
  oreDenom _ s := s
  ore_eq r s := by rw [mul_comm]

end Monoid

end OreLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a63299475337014b568d124b92cbe536ead8722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
