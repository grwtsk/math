# card_eq_nrRealPlaces_add_nrComplexPlaces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab9713d9-6d1e-a645-01c0-3690d6a92237",
  "kind": "theorem",
  "lexical_name": "card_eq_nrRealPlaces_add_nrComplexPlaces",
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
  "slug": "card-eq-nrrealplaces-add-nrcomplexplaces--9331d1acfe5b884aed49b91d",
  "source": {
    "blob": "a1b1683265535421c7b8e4dfd69b024efd13b564",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 401,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9331d1acfe5b884aed49b91dde72c345224b4c34d086fe570cec29f33a9426f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab9713d9-6d1e-a645-01c0-3690d6a92237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_eq_nrRealPlaces_add_nrComplexPlaces :
    Fintype.card (InfinitePlace K) = nrRealPlaces K + nrComplexPlaces K := by
  classical
  convert Fintype.card_subtype_or_disjoint (IsReal (K := K)) (IsComplex (K := K))
    (disjoint_isReal_isComplex K) using 1
  exact (Fintype.card_of_subtype _ (fun w ↦ ⟨fun _ ↦ isReal_or_isComplex w, fun _ ↦ by simp⟩)).symm

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1b1683265535421c7b8e4dfd69b024efd13b564` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
