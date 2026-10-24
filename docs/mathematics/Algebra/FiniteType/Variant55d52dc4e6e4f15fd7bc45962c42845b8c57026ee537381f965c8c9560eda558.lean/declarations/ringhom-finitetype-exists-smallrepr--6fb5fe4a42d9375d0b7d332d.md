# RingHom.FiniteType.exists_smallRepr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b77efd8e-1919-919c-c0e0-b979bae7d435",
  "kind": "lemma",
  "lexical_name": "RingHom.FiniteType.exists_smallRepr",
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
  "slug": "ringhom-finitetype-exists-smallrepr--6fb5fe4a42d9375d0b7d332d",
  "source": {
    "blob": "c845cfc156fea8e54cc2e014e75e69fe3248285d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb5fe4a42d9375d0b7d332d0aff83d3993f76c3ba4ac056290cc11474227560",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b77efd8e-1919-919c-c0e0-b979bae7d435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.FiniteType.exists_smallRepr {S : Type v} [CommRing S] {f : R →+* S}
    (hf : f.FiniteType) :
    ∃ (T : FGAlgCatSkeleton R) (e : T.eval.obj ≃+* S), f = e.toRingHom.comp (algebraMap _ _) := by
  algebraize [f]
  obtain ⟨T, ⟨e⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R S
  exact ⟨T, e.symm.toRingEquiv, e.symm.toAlgHom.comp_algebraMap.symm⟩

/-- Universe lift functor for finitely generated algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant55d52dc4e6e4f15fd7bc45962c42845b8c57026ee537381f965c8c9560eda558.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c845cfc156fea8e54cc2e014e75e69fe3248285d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
