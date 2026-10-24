# toMultiset_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ee5a795-c426-320d-98fc-f8ff727eff57",
  "kind": "theorem",
  "lexical_name": "toMultiset_map",
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
  "slug": "tomultiset-map--f65841287375d4bd0d409ed3",
  "source": {
    "blob": "2f375074c2b10477afc76d456071b50bc47af2a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65841287375d4bd0d409ed3245456744b36df06b2271a26789406c6271a6b26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee5a795-c426-320d-98fc-f8ff727eff57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMultiset_map (f : α →₀ ℕ) (g : α → β) :
    f.toMultiset.map g = toMultiset (f.mapDomain g) := by
  refine f.induction ?_ ?_
  · rw [toMultiset_zero, Multiset.map_zero, mapDomain_zero, toMultiset_zero]
  · intro a n f _ _ ih
    rw [toMultiset_add, Multiset.map_add, ih, mapDomain_add, mapDomain_single,
      toMultiset_single, toMultiset_add, toMultiset_single, ← Multiset.coe_mapAddMonoidHom,
      (Multiset.mapAddMonoidHom g).map_nsmul]
    rfl

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f375074c2b10477afc76d456071b50bc47af2a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
